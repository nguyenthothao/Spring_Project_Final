/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.repositories;

import com.mycompany.spring_project_final.entities.OrderDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author This PC
 */
@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetails, Integer>{
    
}
