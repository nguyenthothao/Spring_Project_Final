/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.service;

import com.mycompany.spring_project_final.entities.PromotionDetail;
import com.mycompany.spring_project_final.model.Item;
import com.mycompany.spring_project_final.repositories.PromotionDetailRepository;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author This PC
 */
@Service
public class PromotionDetailService {

    @Autowired
    private PromotionDetailRepository promotionDetailRepository;

    public PromotionDetail getOne(int id) {
        return promotionDetailRepository.findOne(id);
    }

    public List<PromotionDetail> getAll() {
        return (List<PromotionDetail>) promotionDetailRepository.findAll();
    }

    public double findDiscount(int idProduct, List<PromotionDetail> promotionDetailes) {
        Date promotion = new Date();
        for (int i = 0; i < promotionDetailes.size(); i++) {
            boolean a =promotionDetailes.get(i).getPromotion().getStarDate().before(promotion);
            boolean b =promotionDetailes.get(i).getPromotion().getEndDate().after(promotion);
            boolean c =promotionDetailes.get(i).getPromotion().getEndDate().equals(promotion);
            if (promotionDetailes.get(i).getProductEntityP().getId() == idProduct) {
                if ((promotionDetailes.get(i).getPromotion().getStarDate().before(promotion)
                        && promotionDetailes.get(i).getPromotion().getEndDate().after(promotion))
                        || promotionDetailes.get(i).getPromotion().getStarDate().equals(promotion)
                        || promotionDetailes.get(i).getPromotion().getEndDate().equals(promotion)) {
                    return promotionDetailes.get(i).getPromotion().getDiscount();
                }
            }
        }
//         && promotionDetailes.get(i).getPromotion().getStarDate() == promotion
        return 0;
    }
}
