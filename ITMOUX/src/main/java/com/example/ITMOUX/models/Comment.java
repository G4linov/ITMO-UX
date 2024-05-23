package com.example.ITMOUX.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "comments")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "content")
    private String content;
    @Column(name = "user_id")
    private int userId;
    @Column(name = "recipe_id")
    private int recipeId;
    @Column(name = "article_id")
    private int articleId;
}
