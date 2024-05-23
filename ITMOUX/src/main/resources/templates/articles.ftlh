<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Статьи о блюдах</title>
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="/">Главная</a></li>
        <li><a href="/search">Поиск</a></li>
        <li><a href="/articles">Статьи</a></li>
        <li><a href="/contacts">Контакты</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section class="articles">
      <h1>Статьи о блюдах</h1>
      <div class="article-cards">
      <#list articlesList as article>
        <div class="article-card">
          <img src="#" alt="Статья 1">
          <h2>${article.title}</h2>
          <p>Краткое описание статьи</p>
          <a href="/article/${article.id}" class="btn">Читать далее</a>
        </div>
      </#list>
      </div>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>