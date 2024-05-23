package com.example.ITMOUX.services;

import com.example.ITMOUX.models.Article;
import com.example.ITMOUX.repositories.ArticleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ArticleService {
    private final ArticleRepository articleRepository;

    public List<Article> listArticles(){
        return articleRepository.findAll();
    }

    public Article getById(int id){
        return articleRepository.findById(id).orElse(null);
    }
}
