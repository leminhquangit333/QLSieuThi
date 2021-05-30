/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhh.repository;

import com.nhh.pojo.Category;
import java.util.List;


public interface CategoryRepository {
    List<Category> getCategories();
    Category getCategoryById(int cateId);
}
