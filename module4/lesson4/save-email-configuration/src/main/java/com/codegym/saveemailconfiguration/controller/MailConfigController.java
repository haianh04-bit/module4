package com.codegym.saveemailconfiguration.controller;

import com.codegym.saveemailconfiguration.model.MailConfig;
import com.codegym.saveemailconfiguration.service.MailConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MailConfigController {

    @Autowired
    private MailConfigService mailConfigService;

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("mailConfig", mailConfigService.getCurrentConfig());
        model.addAttribute("languages", new String[]{"English", "Vietnamese", "Japanese", "Chinese"});
        model.addAttribute("pageSizes", new int[]{5, 10, 15, 25, 50, 100});
        return "settings";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("mailConfig") MailConfig mailConfig, Model model) {
        mailConfigService.updateConfig(mailConfig);
        model.addAttribute("mailConfig", mailConfigService.getCurrentConfig());
        model.addAttribute("languages", new String[]{"English", "Vietnamese", "Japanese", "Chinese"});
        model.addAttribute("pageSizes", new int[]{5, 10, 15, 25, 50, 100});
        model.addAttribute("message", "Settings updated successfully!");
        return "settings";
    }
}
