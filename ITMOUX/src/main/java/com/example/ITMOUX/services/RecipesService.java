package com.example.ITMOUX.services;

import com.example.ITMOUX.models.Recipe;
import com.example.ITMOUX.repositories.RecipeRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class RecipesService {
    private final RecipeRepository recipeRepository;

    public List<Recipe> listRecipes(){
        return recipeRepository.findAll();
    }

    public void saveRecipe(Recipe recipe){
        log.info("Saving new: {}", recipe);
        recipeRepository.save(recipe);
    }

    public void deleteRecipe(int id){
        recipeRepository.findById(id);
    }

    public Recipe getRecipeById(int id){
        return recipeRepository.findById(id).orElse(null);
    }

    public List<Recipe> searchArticles(String keyword){
        return recipeRepository.findByTitleContaining(keyword);
    }
}
