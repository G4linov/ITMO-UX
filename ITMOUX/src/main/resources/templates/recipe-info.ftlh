<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${recipe.title}</title>
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
    <article class="recipe">
      <header>
        <h1>${recipe.title}</h1>
        <img src="#" alt="Фото блюда">
        <p>Время приготовления: ${recipe.cookingTime} минут</p>
        <p>Сложность: Легко</p>
      </header>
      <section class="ingredients">
        <h2>Ингредиенты:</h2>
        <ul>
          <li>${recipe.ingredients}</li>
          <li>Ингредиент 2</li>
          <li>Ингредиент 3</li>
        </ul>
      </section>
      <section class="instructions">
        <h2>Инструкции:</h2>
        <ol>
          <li>Шаг 1: ${recipe.instructions}</li>
          <li>Шаг 2: Описание шага 2</li>
          <li>Шаг 3: Описание шага 3</li>
        </ol>
      </section>
    </article>
  </main>

  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>

</body>
</html>