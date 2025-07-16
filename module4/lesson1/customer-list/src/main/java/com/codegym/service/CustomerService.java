package com.codegym.service.impl;

import com.codegym.model.Customer;

import java.util.List;

public class CustomerService {
    List<Customer> findAll();
    Customer findById(int id);
}