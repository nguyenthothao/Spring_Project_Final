/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author This PC
 */
@Controller
public class LoginController {
    
    @RequestMapping(value = "/login_page")
    public String view(Model model){
        return "login_page";
    }
}
