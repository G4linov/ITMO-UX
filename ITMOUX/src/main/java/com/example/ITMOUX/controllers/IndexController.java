package com.example.ITMOUX.controllers;

import com.example.ITMOUX.services.CommentService;
import com.example.ITMOUX.services.RecipesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final RecipesService recipesService;
    private final CommentService commentService;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("recipesList",recipesService.listRecipes());
        return "index";
    }

    @GetMapping("/recipe/{id}")
    public String recipeInfo(@PathVariable int id, Model model){
        model.addAttribute("recipe",recipesService.getRecipeById(id));
        model.addAttribute("comments",commentService.getCommentsForRecipe(id));
        return "recipe-info";
    }
}
