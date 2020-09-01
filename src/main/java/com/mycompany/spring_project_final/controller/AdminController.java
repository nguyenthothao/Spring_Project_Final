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
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/admin")
public class AdminController {

    

    @RequestMapping("/home")
    public String viewHome(Model model) {
        model.addAttribute("message", "Admin Home Page");
        return "admin/home";
    }
//    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
//    public String viewHome(Model model) {
//        double discount = 0;
//        List<ProductEntity> products = productService.getProducts();
////        model.addAttribute("products", products);
//        List<ProductDiscount> Pdiscounts = new ArrayList<>();
//        for (ProductEntity product : products) {
//            ProductDiscount ps = new ProductDiscount();
//            if(promotionService.findDiscount(product.getId())==null){
//                discount = 0;
//            } else {
//                discount = promotionService.findDiscount(product.getId());
//            }
//            ps.setProductEntity(product);
//            ps.setDiscount(discount);
//            Pdiscounts.add(ps);
//        }
//        model.addAttribute("productD", Pdiscounts);
////        model.addAttribute("products", productService.getProducts());
//        model.addAttribute("product1", productService.getProduct(1));
//        model.addAttribute("product2", productService.getProduct(2));
//        return "home";
//    }

    }
