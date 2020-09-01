/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.controller;

import com.mycompany.spring_project_final.entities.OrderDetails;
import com.mycompany.spring_project_final.entities.Orders;
import com.mycompany.spring_project_final.entities.ProductEntity;
import com.mycompany.spring_project_final.model.Item;
import com.mycompany.spring_project_final.model.ProductDiscount;
import com.mycompany.spring_project_final.repositories.OrderDetailRepository;
import com.mycompany.spring_project_final.service.AccountService;
import com.mycompany.spring_project_final.service.OrderDetailService;
import com.mycompany.spring_project_final.service.OrderService;
import com.mycompany.spring_project_final.service.ProductDetailService;
import com.mycompany.spring_project_final.service.ProductService;
import com.mycompany.spring_project_final.service.PromotionDetailService;
import com.mycompany.spring_project_final.service.PromotionService;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author AnhLe
 */
@Controller
public class HomeController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductDetailService productDetailService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private PromotionDetailService promotionDetailService;
    
    @Autowired
    private PromotionService promotionService;

    @Autowired
    private AccountService accountService;
    
    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String viewHome(Model model) {
        double discount = 0;
        List<ProductEntity> products = productService.getProducts();
//        model.addAttribute("products", products);
        List<ProductDiscount> Pdiscounts = new ArrayList<>();
        for (ProductEntity product : products) {
            ProductDiscount ps = new ProductDiscount();
            if(promotionService.findDiscount(product.getId())==null){
                discount = 0;
            } else {
                discount = promotionService.findDiscount(product.getId());
            }
            ps.setProductEntity(product);
            ps.setDiscount(discount);
            Pdiscounts.add(ps);
        }
        model.addAttribute("productD", Pdiscounts);
//        model.addAttribute("products", productService.getProducts());
        model.addAttribute("product1", productService.getProduct(1));
        model.addAttribute("product2", productService.getProduct(2));
        return "home";
    }

    @RequestMapping(value = "/shop")
    public String viewShop(Model model) {
        List<ProductEntity> products = productService.getProducts();
//        model.addAttribute("products", products);
        List<ProductDiscount> Pdiscounts = new ArrayList<>();
        for (ProductEntity product : products) {
            ProductDiscount ps = new ProductDiscount();
            double discount = promotionDetailService.findDiscount(product.getId(), promotionDetailService.getAll());
            ps.setProductEntity(product);
            ps.setDiscount(discount);
            Pdiscounts.add(ps);
        }
        model.addAttribute("productD", Pdiscounts);
        // Sort product
        List<ProductEntity> productsPrice = products.stream()
                .sorted(Comparator.comparingDouble(ProductEntity::getPrice))
                .collect(Collectors.toList());
        model.addAttribute("productHightolow", productsPrice);
        // Product popular
        List<OrderDetails> orderPopular = orderDetailService.getAll();
        List<ProductEntity> pros = productService.getProducts();
        List<Item> item = new ArrayList<>();
        for (int i = 0; i < pros.size(); i++) {
            int s = 0;
            for (OrderDetails orderDe : orderPopular) {
                if (orderDe.getProductEntity().getId() == pros.get(i).getId()) {
                    s = s + orderDe.getQuantity();
                }
            }
            Item ate = new Item(pros.get(i), s);
            item.add(ate);
        }
        List<Item> itemPopular = item.stream()
                .sorted(Comparator.comparingDouble(Item::getQuantity).reversed())
                .collect(Collectors.toList());
        model.addAttribute("productPopular", itemPopular);
        return "shop";
    }

    @RequestMapping(value = "/checkout")
    public String checkout(Model model, HttpSession httpSession) {
        List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
        model.addAttribute("sessionCart", cart);
        model.addAttribute("order", new Orders());
        return "checkout";
    }

    @RequestMapping(value = "/update/{productId}", method = RequestMethod.POST)
    public String updateP(Model model, HttpSession httpSession,
            @PathVariable("productId") int id,
            @ModelAttribute("quantity") int quantity) {
        List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
        for (Item product : cart) {
            if (product.getProductEntity().getId() == id) {
                product.setQuantity(quantity);
            }
        }
        model.addAttribute("sessionCart", cart);
        return "cart";
    }

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String result(Model model,
            @ModelAttribute("order") Orders order, HttpSession httpSession) throws MessagingException {
        List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
        String subject = "Order watches";
        int s = 0;
        double total = 0;
        for (Item item : cart) {
            s = s + 1;
            double price = item.getQuantity() * item.getProductEntity().getPrice();
            double discount = promotionDetailService.findDiscount(item.getProductEntity().getId(), promotionDetailService.getAll());
            double priceDiscount = price * (1 - (discount / 100));
            total = priceDiscount + total;
            mailMsg = mailMsg + "<tr>" + "<td>" + s + "</td>"
                    + "<td>" + item.getProductEntity().getName() + "</td>"
                    + "<td>" + item.getColor() + "</td>"
                    + "<td>" + item.getSizeWatch() + "</td>"
                    + "<td>" + item.getQuantity() + "</td>"
                    + "<td>" + discount + "%</td>"
                    + "<td>" + priceDiscount + "</td>"
                    + "</tr>";
        }
        mailMsg = mailMsg + "</table>"
                + "<h1>Total price:</h1><h2 style='text-align: right;'>" + "$" + total + "</h2>"
                + "</body>\n"
                + "</html>";
        order.setDateOrder(new Date());

        // creates a simple e-mail object
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
        helper.setText(mailMsg, true); // Use this or above line.
        helper.setTo(order.getEmail());
        helper.setSubject(subject);
        mailSender.send(mimeMessage);
        // sends the e-mail
        order = orderService.save(order);

        if (order != null && order.getId() > 0 && !CollectionUtils.isEmpty(cart)) {
            List<OrderDetails> orderDetailses = new ArrayList<>();
            for (Item item : cart) {
                double discount = promotionDetailService.findDiscount(item.getProductEntity().getId(), promotionDetailService.getAll());
                OrderDetails orderDetail = new OrderDetails();
                double price = item.getQuantity() * item.getProductEntity().getPrice();
                orderDetail.setOrder(order);
                orderDetail.setPrice(price * (1 - (discount / 100)));
                orderDetail.setQuantity(item.getQuantity());
                orderDetail.setProductEntity(item.getProductEntity());
                orderDetail.setColor(item.getColor());
                orderDetail.setSizeWatch(item.getSizeWatch());
                orderDetail.setDiscount(discount);
                orderDetailses.add(orderDetail);
            }
            orderDetailService.save(orderDetailses);
            httpSession.removeAttribute("cart");
        }
        return "confirmation";
    }

    @RequestMapping(value = "/about")
    public String aboutUs(Model model) {
        return "about";
    }

    @RequestMapping(value = "/blog")
    public String blog(Model model) {
        return "blog";
    }

    @RequestMapping(value = "/blog_details")
    public String blogDetail(Model model) {
        return "blog_detail";
    }

    @RequestMapping(value = "/search")
    public String searchP(Model model,
            @ModelAttribute("strSearch") String strSearch) {
        model.addAttribute("strSearch", strSearch);
        model.addAttribute("products", productService.searchName(strSearch));
        return "search";
    }

    @RequestMapping(value = "/product_details/{productId}")
    public String viewProductDetails(Model model,
            @PathVariable("productId") int productId) {
        model.addAttribute("product", productService.getProduct(productId));
        model.addAttribute("productDetail", productDetailService.getOne(productId));
        return "product_details";
    }

    @RequestMapping("/profile")
    public String viewProfile(Model model){
//        model.addAttribute("account", accountService.findAccountByEmail());
        return "profile";
    }
            
    @RequestMapping("/login")
    public String viewLogin(Model model,
            @RequestParam(value = "isError", required = false) boolean isError) {
        if (isError) {
            model.addAttribute("message", "Login fail.");
        }
        return "login_page";
    }
    //Message send mail
    static public String mailMsg = "<h1>Thanks, your order is success!</h1><br>"
            + "<h1 style='text-align: center; color: red;'>Your Order</h1>"
            + "<!DOCTYPE html>\n"
            + "<html>\n"
            + "<head>\n"
            + "<style>\n"
            + "#customers {\n"
            + "  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n"
            + "  border-collapse: collapse;\n"
            + "  width: 100%;\n"
            + "}\n"
            + "\n"
            + "#customers td, #customers th {\n"
            + "  border: 1px solid #ddd;\n"
            + "  padding: 8px;\n"
            + "}\n"
            + "\n"
            + "#customers tr:nth-child(even){background-color: #f2f2f2;}\n"
            + "\n"
            + "#customers tr:hover {background-color: #ddd;}\n"
            + "\n"
            + "#customers th {\n"
            + "  padding-top: 12px;\n"
            + "  padding-bottom: 12px;\n"
            + "  text-align: left;\n"
            + "  background-color: blue;\n"
            + "  color: white;\n"
            + "}\n"
            + "</style>\n"
            + "</head>\n"
            + "<body>\n"
            + "\n"
            + "<table id=\"customers\">" + "<tr>" + "<th>Id</th>" + "<th>Name</th>" + "<th>Color</th>" + "<th>Size watch</th>" + "<th>Quantity</th>" + "<th>Discount</th>" + "<th>Price</th>" + "</tr>";
}
