package com.example.ITMOUX.repositories;

import com.example.ITMOUX.models.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Integer> {
    List<Comment> findByRecipeId(int recipe_id);
    List<Comment> findByArticleId(int article_id);
}
