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
public class Item {

    private ProductEntity productEntity;
    private int quantity;
    private String color;
    private double sizeWatch;
    private double discout;

    public Item() {
    }

    public Item(ProductEntity productEntity, int quantity, String color, double sizeWatch, double discout) {
        this.productEntity = productEntity;
        this.quantity = quantity;
        this.color = color;
        this.sizeWatch = sizeWatch;
        this.discout = discout;
    }

    public Item(ProductEntity productEntity, int quantity) {
        this.productEntity = productEntity;
        this.quantity = quantity;
    }
    public Item(ProductEntity productEntity, double discout) {
        this.productEntity = productEntity;
        this.discout = discout;
    }

    public ProductEntity getProductEntity() {
        return productEntity;
    }

    public void setProductEntity(ProductEntity productEntity) {
        this.productEntity = productEntity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getSizeWatch() {
        return sizeWatch;
    }

    public void setSizeWatch(double sizeWatch) {
        this.sizeWatch = sizeWatch;
    }

    public double getDiscout() {
        return discout;
    }

    public void setDiscout(double discout) {
        this.discout = discout;
    }

}
