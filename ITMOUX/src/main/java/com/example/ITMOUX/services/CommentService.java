package com.example.ITMOUX.services;

import com.example.ITMOUX.models.Comment;
import com.example.ITMOUX.repositories.CommentRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    public List<Comment> getCommentsForArticle(int id){
        if (commentRepository.findByArticleId(id).isEmpty()){
            return null;
        }
        return commentRepository.findByArticleId(id);
    }

    public List<Comment> getCommentsForRecipe(int id){
        if (commentRepository.findByRecipeId(id).isEmpty()){
            return null;
        }
        return commentRepository.findByRecipeId(id);
    }
}
