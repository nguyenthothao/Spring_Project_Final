/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.controller;

import com.mycompany.spring_project_final.service.AccountService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author This PC
 */
@Controller
public class LoginController {
    @Autowired
    private AccountService accountService;
    
    @RequestMapping(value = "/login_page")
    public String view(Model model){
        return "login_page";
    }
    @RequestMapping(value = "/log_in")
    public String login(Model model,
            @ModelAttribute("name") String name,
            @ModelAttribute("password") String password,
            HttpSession httpSession){
        if(accountService.check(name, password)){
            return "user/home";
        }
        return "login_page";
    }
}
