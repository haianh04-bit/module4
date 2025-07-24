package com.codegym.nasaphotoapp.controller;

import com.codegym.nasaphotoapp.model.Coment;
import com.codegym.nasaphotoapp.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CommentController {

    private final ICommentService commentService;

    @Autowired
    public CommentController(ICommentService commentService) {
        this.commentService = commentService;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("comments", commentService.findAllComments()); // hoặc getTodayComments nếu có
        model.addAttribute("newComment", new Coment());
        return "index";
    }

    @PostMapping("/comment")
    public String submit(@ModelAttribute Coment comment) {
        commentService.saveComment(comment);
        return "redirect:/";
    }

    @GetMapping("/like/{id}")
    public String like(@PathVariable Long id) {
        // Ví dụ tăng like có thể là: find rồi tăng like rồi save
        Coment comment = commentService.findCommentById(id);
        if (comment != null) {
            comment.setLikes(comment.getLikes() + 1);
            commentService.saveComment(comment);
        }
        return "redirect:/";
    }
}
