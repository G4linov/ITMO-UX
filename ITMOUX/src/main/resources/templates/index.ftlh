<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Рецепты</title>
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
    <section class="hero">
      <h1>Вкусные рецепты для вашей кухни</h1>
      <p>Откройте для себя новые блюда и удивите своих близких!</p>
    </section>

    <section class="recipes">
      <h2>Популярные рецепты</h2>
      <div class="recipe-grid">
      <#list recipesList as recipe>
        <div class="recipe-card">
          <img src="recipe1.jpg" alt="Рецепт 1">
          <h3>${recipe.title}</h3>
          <p>${recipe.description_short}</p>
          <a href="/recipe/${recipe.id}" class="btn">Подробнее</a>
        </div>
      </#list>
      </div>
    </section>

    <section class="categories">
      <h2>Категории рецептов</h2>
      <ul>
        <li><a href="#">Завтраки</a></li>
        <li><a href="#">Салаты</a></li>
        <li><a href="#">Супы</a></li>
        <li><a href="#">Горячие блюда</a></li>
        <li><a href="#">Десерты</a></li>
        <li><a href="#">Напитки</a></li>
      </ul>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>

</body>
</html>