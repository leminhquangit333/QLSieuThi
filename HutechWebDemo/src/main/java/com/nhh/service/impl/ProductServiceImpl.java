/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhh.service.impl;

import com.nhh.pojo.Product;
import com.nhh.repository.ProductRepository;
import com.nhh.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    
    @Override
    public List<Product> getProducts(String kw) {
        return this.productRepository.getProducts(kw);
    }

    @Override
    public boolean addOrUpdateProduct(Product p) {
        return this.productRepository.addOrUpdateProduct(p);
    }

    @Override
    public Product getProductById(int i) {
        return this.productRepository.getProductById(i);
    }

    @Override
    public boolean deleteProduct(int i) {
        return this.productRepository.deleteProduct(i);
    }
    
}
