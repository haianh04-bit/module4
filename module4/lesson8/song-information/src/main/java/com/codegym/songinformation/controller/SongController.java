package com.codegym.songinformation.controller;

import com.codegym.songinformation.model.Song;
import com.codegym.songinformation.service.ISongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/songs")
public class SongController {

    @Autowired
    private ISongService songService;

    @GetMapping("/create")
    public String showForm(Model model) {
        model.addAttribute("song", new Song());
        return "form";
    }

    @PostMapping("/create")
    public String saveSong(@Valid @ModelAttribute("song") Song song,
                           BindingResult bindingResult,
                           Model model) {
        if (bindingResult.hasErrors()) {
            return "form";
        }
        songService.save(song);
        model.addAttribute("songs", songService.findAll());
        return "result";
    }
}
