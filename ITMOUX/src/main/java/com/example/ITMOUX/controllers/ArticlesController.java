package com.example.ITMOUX.controllers;

import com.example.ITMOUX.services.ArticleService;
import com.example.ITMOUX.services.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class ArticlesController {
    private final ArticleService articleService;
    private final CommentService commentService;

    @GetMapping("/articles")
    public String articles(Model model) {
        model.addAttribute("articlesList",articleService.listArticles());
        return "articles";
    }

    @GetMapping("/article/{id}")
    public String articleInfo(@PathVariable int id, Model model){
        model.addAttribute("article",articleService.getById(id));
        model.addAttribute("comments",commentService.getCommentsForArticle(id));
        return "article-info";
    }
}
