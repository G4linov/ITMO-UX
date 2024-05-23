package com.example.ITMOUX.repositories;

import com.example.ITMOUX.models.Article;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Integer> {
}
