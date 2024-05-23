<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Поиск</title>
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
    <section class="search">
      <h1>Поиск рецепта</h1>
      <form action="/search" method="get">
        <label for="search">Поиск:</label>
        <input type="text" id="search" name="search" placeholder="Введите название блюда или ингредиент">
        <button type="submit">Найти</button>
      </form>
    </section>
    <section class="search-results">
     <h2>Результаты поиска</h2>
          <ul>
          <#list recipesList as recipe>
            <li>
              <a href="/recipe/${recipe.id}">${recipe.title}</a>
              <p>${recipe.description_short}</p>
            </li>
              <#else>
              <h3>Рецепты не найдены</h3>
          </#list>
          </ul>
    </section>
  </main>
  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>

</body>
</html>