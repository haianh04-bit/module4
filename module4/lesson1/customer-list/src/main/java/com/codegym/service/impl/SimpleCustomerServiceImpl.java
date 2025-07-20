package com.codegym.service.impl;

import com.codegym.model.Customer;
import com.codegym.service.CustomerService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SimpleCustomerServiceImpl implements CustomerService {
    private static final List<Customer> demo = new ArrayList<>();

    static {
        demo.add(new Customer(1, "Nguyen Khac Nhat", "nhat@codegym.vn", "Hà Nội"));
        demo.add(new Customer(2, "Dang Huy Hoa", "hoa.dang@codegym.vn", "Hồ Chí Minh"));
    }

    @Override
    public List<Customer> findAll() {
        return demo;
    }

    @Override
    public Customer findById(int id) {
        return demo.stream().filter(c -> c.getId() == id).findFirst().orElse(null);
    }
}
