package com.example.ITMOUX.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "recipes")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "description_short")
    private String description_short;
    @Column(name = "description_long", columnDefinition = "text")
    private String description_long;
    @Column(name = "cooking_time")
    private int cookingTime;
    @Column(name = "servings")
    private int servings;
    @Column(name = "ingredients")
    private String ingredients;
    @Column(name = "instructions")
    private String instructions;
    @Column(name = "user_id")
    private int userId;
}