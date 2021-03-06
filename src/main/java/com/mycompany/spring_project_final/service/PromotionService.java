/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.service;

import com.mycompany.spring_project_final.repositories.PromotionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author This PC
 */
@Service
public class PromotionService {
    @Autowired
    private PromotionRepository promotionRepository;
    
    public Double findDiscount(int id){
        return promotionRepository.findPromotionDiscount(id);
    }
}
