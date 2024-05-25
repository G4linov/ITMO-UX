<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Добавить рецепт</title>
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
    <section class="add-recipe">
      <h1>Добавить рецепт</h1>
      <form action="/recipe/create" method="post">
        <label for="title">Название рецепта:</label>
        <input type="text" id="title" name="title" required>

        <label for="description_short">Краткое описание:</label>
        <textarea id="description_short" name="description_short" required></textarea>

        <label for="description_long">Подробное описание:</label>
        <textarea id="description_long" name="description_long" required></textarea>

        <label for="cooking_time">Время приготовления (в минутах):</label>
        <input type="number" id="cooking_time" name="cooking_time" required>

        <label for="servings">Количество порций:</label>
        <input type="number" id="servings" name="servings" required>

        <label for="ingredients">Ингредиенты:</label>
        <textarea id="ingredients" name="ingredients" required></textarea>

        <label for="instructions">Инструкции:</label>
        <textarea id="instructions" name="instructions" required></textarea>

        <label for="user_id">ID пользователя:</label>
        <input type="number" id="user_id" name="user_id">

        <button type="submit">Опубликовать</button>
      </form>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>
</body>
</html>
