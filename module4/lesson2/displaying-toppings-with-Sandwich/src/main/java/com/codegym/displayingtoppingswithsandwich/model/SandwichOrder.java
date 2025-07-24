package com.codegym.displayingtoppingswithsandwich.model;

import java.util.Arrays;

public class SandwichOrder {
    private String[] condiments;

    public SandwichOrder() {}

    public SandwichOrder(String[] condiments) {
        this.condiments = condiments;
    }

    public String[] getCondiments() {
        return condiments;
    }

    public void setCondiments(String[] condiments) {
        this.condiments = condiments;
    }

    @Override
    public String toString() {
        return Arrays.toString(condiments);
    }
}
