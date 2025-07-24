package com.codegym.displayingtoppingswithsandwich.controller;

import com.codegym.displayingtoppingswithsandwich.model.SandwichOrder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class SandwichController {

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("order", new SandwichOrder());
        return "index";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("order") SandwichOrder order, Model model) {
        model.addAttribute("selectedCondiments", order.getCondiments());
        return "result";
    }
}
