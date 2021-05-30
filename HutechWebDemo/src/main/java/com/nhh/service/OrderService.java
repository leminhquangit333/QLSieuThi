/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhh.service;

import com.nhh.pojo.Cart;
import java.util.Date;
import java.util.List;
import java.util.Map;


public interface OrderService {
    boolean addOrder(Map<Integer, Cart> cart);
    List<Object[]> getOrderStats(Date fromDate, Date toDate);
}
