/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.repositories;

import com.mycompany.spring_project_final.entities.Promotion;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author This PC
 */
@Repository
public interface PromotionRepository extends CrudRepository<Promotion, Integer> {

    @Query(value = "SELECT c.discount FROM promotiondetail a\n"
            + "INNER JOIN promotion c\n"
            + "ON a.promotion_id = c.id AND a.product_id = ?1\n"
            + "WHERE curtime() BETWEEN c.start_date AND c.end_date;", nativeQuery = true)
    public Double findPromotionDiscount(int id);
}
