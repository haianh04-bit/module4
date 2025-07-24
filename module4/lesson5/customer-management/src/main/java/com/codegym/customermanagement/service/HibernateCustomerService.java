package com.codegym.customermanagement.service;

import com.codegym.customermanagement.model.Customer;

import java.util.Collections;
import java.util.List;

public class HibernateCustomerService implements ICustomerService {
    @Override
    public List<Customer> findAll() {
        return Collections.emptyList();
    }

    @Override
    public Customer findById(int id) {
        return null;
    }

    @Override
    public void save(Customer customer) {

    }

    @Override
    public void remove(int id) {

    }
}
