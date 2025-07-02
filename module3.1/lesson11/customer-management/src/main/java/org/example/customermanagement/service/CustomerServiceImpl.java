package org.example.customermanagement.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, customer> customers ;

    static {
        customers = new HashMap<>();
        customers.put(1, new customer(1, "John", "john@codegym.vn", "Hanoi"));
        customers.put(2, new customer(2, "Bill", "bill@codegym.vn", "Da Nang"));
        customers.put(3, new customer(3, "Alex", "alex@codegym.vn", "Ho Chi Minh"));
        customers.put(4, new customer(4, "Adam", "adamcodegym.vn", "Can Tho"));
        customers.put(5, new customer(5, "Jane", "janecodegym.vn", "Miami"));
        customers.put(6, new customer(6, "Tom", "tomcodegym.vn", "TP.HCM"));
    }
    @Override
    public List<customer> findAll() {
        return new ArrayList<>(customers.values());
    }
    @Override
    public void save(customer customer) {
        customers.put(customer.getId(), customer);
    }
    @Override
    public customer findById(int id) {
        return customers.get(id);
    }
    @Override
    public void update(int id, customer customer) {
        customers.put(id, customer);
    }
    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
