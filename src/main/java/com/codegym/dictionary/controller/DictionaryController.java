package com.codegym.dictionary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {
    private static final Map<String, String> DICTIONARY = new HashMap<>();

    static {
        DICTIONARY.put("hello", "xin chào");
        DICTIONARY.put("dog", "con chó");
        DICTIONARY.put("cat", "con mèo");
        DICTIONARY.put("book", "quyển sách");
        DICTIONARY.put("apple", "quả táo");
    }

    @GetMapping("/dictionary")
    public String showForm() {
        return "index";
    }

    @PostMapping("/dictionary")
    public String translate(@RequestParam("word") String word, Model model) {
        String result = DICTIONARY.get(word.toLowerCase());
        model.addAttribute("word", word);
        model.addAttribute("result", result);
        return "index";
    }
}
