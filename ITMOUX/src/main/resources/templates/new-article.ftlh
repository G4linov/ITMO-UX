<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Добавить статью</title>
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
    <section class="add-article">
      <h1>Добавить статью</h1>
      <form action="/article/create" method="post">
        <label for="title">Название статьи:</label>
        <input type="text" id="title" name="title" required>

        <label for="content">Содержание:</label>
        <textarea id="content" name="content" required></textarea>

        <button type="submit">Опубликовать</button>
      </form>
    </section>
  </main>

  <footer>
    <p>&copy; 2023 Рецепты. Все права защищены.</p>
  </footer>
</body>
</html>
