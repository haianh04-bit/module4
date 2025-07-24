package com.codegym.nasaphotoapp.service;

import com.codegym.nasaphotoapp.model.Coment;
import com.codegym.nasaphotoapp.repository.ICommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class CommentService implements ICommentService {

    @Autowired
    private ICommentRepository commentRepository;

    @Override
    public Coment findCommentById(Long id) {
        return commentRepository.findCommentById(id);
    }

    @Override
    public List<Coment> findAllComments() {
        return commentRepository.findAllComments();
    }

    @Override
    public void saveComment(Coment comment) {
        commentRepository.saveComment(comment);
    }

    @Override
    public void deleteComment(Long id) {
        commentRepository.deleteComment(id);
    }
}
