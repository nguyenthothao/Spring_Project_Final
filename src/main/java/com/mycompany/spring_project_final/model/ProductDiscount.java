/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.model;

import com.mycompany.spring_project_final.entities.ProductEntity;

/**
 *
 * @author This PC
 */
public class ProductDiscount {
    private ProductEntity productEntity;
    private double discount;

    public ProductDiscount() {
    }
    public ProductEntity getProductEntity() {
        return productEntity;
    }

    public void setProductEntity(ProductEntity productEntity) {
        this.productEntity = productEntity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
    
    
}
