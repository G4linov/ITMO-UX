package com.example.ITMOUX.controllers;

import com.example.ITMOUX.models.Article;
import com.example.ITMOUX.models.Recipe;
import com.example.ITMOUX.services.ArticleService;
import com.example.ITMOUX.services.CommentService;
import com.example.ITMOUX.services.RecipesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class NewobjectController {
    private final RecipesService recipesService;
    private final ArticleService articleService;
    @GetMapping("/newarticle")
    public String newarticle(){
        return "new-article";
    }

    @GetMapping("/newrecipe")
    public String newrecipe(){
        return "new-recipe";
    }

    @PostMapping("/article/create")
    public String createProduct(Article article) {
        articleService.saveArticle(article);
        return "new-article";
    }

    @PostMapping("/recipe/create")
    public String createProduct(Recipe recipe) {
        recipesService.saveRecipe(recipe);
        return "new-recipe";
    }
}
