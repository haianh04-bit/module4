package org.example.customermanagement.model;

import java.util.List;

public interface CustomerService {
    List<customer> findAll();
    void save(customer customer);
    customer findById(int id);
    void update(int id, customer customer);
    void remove(int id);
}
