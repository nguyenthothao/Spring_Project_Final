/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.service;

import com.mycompany.spring_project_final.entities.ProductDetail;
import com.mycompany.spring_project_final.repositories.ProductDetailsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author This PC
 */
@Service
public class ProductDetailService {
    @Autowired
    private ProductDetailsRepository detailsRepository;
    
    public List<ProductDetail> getAll(){
        return (List<ProductDetail>)detailsRepository.findAll();
    }
    public ProductDetail getOne(int id){
        return detailsRepository.findOne(id);
    }
}
