package com.example.ITMOUX.controllers;

import com.example.ITMOUX.services.RecipesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class SearchController {
    private final RecipesService recipesService;

    @GetMapping("/search")
    public String search(@RequestParam(name = "search", required = false) String title, Model model) {
        model.addAttribute("recipesList",recipesService.searchArticles(title));
        return "search";
    }
}
