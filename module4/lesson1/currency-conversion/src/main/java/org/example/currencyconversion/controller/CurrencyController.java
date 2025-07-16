package org.example.currencyconversion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CurrencyController {

    @GetMapping("/convert")
    public String showForm() {
        return "index";
    }

    @PostMapping("/convert")
    public String convert(@RequestParam double amount,
                          @RequestParam String from,
                          @RequestParam String to,
                          Model model) {

        double rate = getExchangeRate(from, to);
        double result = amount * rate;

        model.addAttribute("amount", amount);
        model.addAttribute("from", from);
        model.addAttribute("to", to);
        model.addAttribute("result", result);
        model.addAttribute("rate", rate);

        return "index";
    }

    private double getExchangeRate(String from, String to) {
        // Tỷ giá mẫu
        if (from.equals("USD") && to.equals("VND")) return 24500;
        if (from.equals("EUR") && to.equals("VND")) return 27000;
        if (from.equals("VND") && to.equals("USD")) return 1.0 / 24500;
        if (from.equals("VND") && to.equals("EUR")) return 1.0 / 27000;
        return 1.0;
    }
}
