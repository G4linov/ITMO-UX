package com.example.ITMOUX.repositories;

import com.example.ITMOUX.models.Article;
import com.example.ITMOUX.models.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Integer> {
    List<Recipe> findByTitleContaining(String keyword);
}
