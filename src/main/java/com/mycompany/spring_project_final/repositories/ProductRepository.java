/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.repositories;

import com.mycompany.spring_project_final.entities.ProductEntity;
import com.mycompany.spring_project_final.model.Item;
import com.mycompany.spring_project_final.model.ProductDiscount;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author This PC
 */
@Repository
public interface ProductRepository extends CrudRepository<ProductEntity, Integer> {

//    @Query(value = "SELECT * FROM ((promotiondetail a\n"
//            + "INNER JOIN product b\n"
//            + "ON a.product_id = b.id)\n"
//            + "INNER JOIN promotion c\n"
//            + "ON a.promotion_id = c.id)\n"
//            + "WHERE curtime() BETWEEN c.start_date AND c.end_date;", nativeQuery = true)
//    public List<ProductEntity> findPromotionDiscount();

    public List<ProductEntity> findByNameContaining(String name);
}
