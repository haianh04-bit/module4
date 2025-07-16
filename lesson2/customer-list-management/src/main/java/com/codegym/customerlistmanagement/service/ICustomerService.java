package com.codegym.customerlistmanagement.service;

import com.codegym.customerlistmanagement.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    Customer findById(Long id);

    void save(Customer customer);
}