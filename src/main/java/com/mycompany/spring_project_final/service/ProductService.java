/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.service;

import com.mycompany.spring_project_final.entities.Orders;
import com.mycompany.spring_project_final.entities.ProductEntity;
import com.mycompany.spring_project_final.model.Item;
import com.mycompany.spring_project_final.model.ProductDiscount;
import com.mycompany.spring_project_final.repositories.ProductRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author This PC
 */
@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;
    
    public List<ProductEntity> getProducts(){
        return (List<ProductEntity>)productRepository.findAll();
    }
    public ProductEntity getProduct(int id){
        return productRepository.findOne(id);
    }
    public boolean delete(int id){
        productRepository.delete(id);
        return productRepository.exists(id);
    }
    public int exists(int id, List<Item> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProductEntity().getId() == id) {
                return i;
            }
        }
        return -1;
    }
    public List<ProductEntity> searchName(String name){
        return productRepository.findByNameContaining(name);
    }
}
