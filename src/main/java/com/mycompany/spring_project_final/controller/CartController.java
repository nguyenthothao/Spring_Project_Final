/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.controller;

import com.mycompany.spring_project_final.entities.ProductDetail;
import com.mycompany.spring_project_final.entities.ProductEntity;
import com.mycompany.spring_project_final.model.Item;
import com.mycompany.spring_project_final.service.ProductDetailService;
import com.mycompany.spring_project_final.service.ProductService;
import com.mycompany.spring_project_final.service.PromotionDetailService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author This PC
 */
@Controller
public class CartController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductDetailService productDetailService;

    @Autowired
    private PromotionDetailService promotionDetailService;

    @RequestMapping(value = "/cart_order/{productId}")
    public String viewCartOrder(Model model,
            @PathVariable("productId") int productId,
            HttpSession httpSession) {
        double discount = promotionDetailService.findDiscount(productId, promotionDetailService.getAll());
        ProductEntity product = productService.getProduct(productId);
        ProductDetail pDetails = productDetailService.getOne(productId);
        String color = pDetails.getColor().getColor();
        double size = pDetails.getCaseDiameter().getSizeWatch();
//        double totalPrice;
        if (httpSession.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<>();
            cart.add(new Item(product, 1, color, size, discount));
//            totalPrice = product.getPrice();
            httpSession.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
            int index = productService.exists(productId, cart);
            if (index == -1) {
                cart.add(new Item(product, 1, color, size, discount));
//                totalPrice = product.getPrice();
            } else {
                int count = cart.get(index).getQuantity() + 1;
//                totalPrice = (cart.get(index).getQuantity() + 1) * product.getPrice();
                cart.get(index).setQuantity(count);
            }
            httpSession.setAttribute("cart", cart);
        }
        if (product != null && product.getId() > 0) {
//            model.addAttribute("totlePrice", totalPrice);
            model.addAttribute("sessionCart", httpSession.getAttribute("cart"));
            return "cart";
        } else {
            return "redirect:/cart?message=Watch Not Found&messageType=info";
        }
    }

    @RequestMapping(value = "/cart")
    public String viewCart(Model model,
            HttpSession httpSession) {
        List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
//        double totalPrice = 0;
//        if (httpSession.getAttribute("cart") == null) {
//            model.addAttribute("totalPrice", totalPrice);
//        } else {
//            totalPrice = 0;
//            for (Item product : cart) {
//                totalPrice = totalPrice + product.getQuantity() * product.getProductEntity().getPrice();
//            }
//            model.addAttribute("totalPrice", totalPrice);
//        }
        model.addAttribute("sessionCart", cart);
        return "cart";
    }

    @RequestMapping(value = "cart_quantity/{productId}", method = RequestMethod.POST)
    public String cartQuantity(Model model,
            @ModelAttribute("soluong") int quantity,
            @ModelAttribute("color") String color,
            @ModelAttribute("sizeWatch") double size,
            @PathVariable("productId") int productId,
            HttpSession httpSession) {
        ProductEntity product = productService.getProduct(productId);
        double discount = promotionDetailService.findDiscount(productId, promotionDetailService.getAll());
//        double totalPrice = 0;
        if (httpSession.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<>();
            cart.add(new Item(product, quantity, color, size, discount));
//            totalPrice = product.getPrice() * quantity;
            httpSession.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
            int index = productService.exists(productId, cart);
            if (index == -1) {
                cart.add(new Item(product, quantity, color, size, discount));
//                totalPrice = product.getPrice() * quantity;
            } else {
                int count = cart.get(index).getQuantity() + quantity;
                cart.get(index).setQuantity(count);
//                totalPrice = product.getPrice() * count;
            }
            httpSession.setAttribute("cart", cart);
        }
        return "redirect:/cart";
    }

    @RequestMapping(value = "/delete/{productId}")
    public String deleteCart(Model model,
            @PathVariable("productId") int id,
            HttpSession httpSession) {
        List<Item> cart = (List<Item>) httpSession.getAttribute("cart");
        int i = productService.exists(id, cart);
        cart.remove(i);
        httpSession.setAttribute("cart", cart);
        return "redirect:/cart?message=Delete Succsess";
    }
}
