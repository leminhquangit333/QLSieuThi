/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhh.service;

import com.nhh.pojo.Product;
import java.util.List;


public interface ProductService {
    List<Product> getProducts(String kw);
    Product getProductById(int id);
    boolean addOrUpdateProduct(Product p);
    boolean deleteProduct(int id);
}
