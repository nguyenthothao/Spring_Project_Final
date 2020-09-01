/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_project_final.service;

import com.mycompany.spring_project_final.entities.AccountEntity;
import com.mycompany.spring_project_final.entities.ProductEntity;
import com.mycompany.spring_project_final.repositories.AccountRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author AnhLe
 */
@Service
public class AccountService {

    @Autowired
    private AccountRepository accountRepository;

    public AccountEntity
            findAccountByEmailAndPassword(String email, String password) {
        return accountRepository.findAccountByEmailAndPassword(email, password);
    }

    public boolean check(String name, String password) {
        List<AccountEntity> accs = (List<AccountEntity>) accountRepository.findAll();
        for (AccountEntity acc : accs) {
            if(acc.getEmail().equalsIgnoreCase(name) && acc.getPassword().equalsIgnoreCase(password)){
                return true;
            }
        }
        return false;
    }
    
    public AccountEntity findAccountByEmail(String email) {
        return accountRepository.findAccountByEmail(email);
    }
}
