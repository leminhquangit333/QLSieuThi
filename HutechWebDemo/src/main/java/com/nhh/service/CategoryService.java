/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhh.service;

import com.nhh.pojo.Category;
import java.util.List;


public interface CategoryService {
    List<Category> getCategories();
    Category getCategoryById(int cateId);
}
