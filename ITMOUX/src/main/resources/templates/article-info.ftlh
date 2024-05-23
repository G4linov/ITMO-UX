<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Статья: ${article.title}</title>
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
    <article class="article">
      <header>
        <h1>${article.title}</h1>
        <p>Дата публикации: 13 мая 2024</p>
        <img src="article.jpg" alt="Иллюстрация к статье">
      </header>
      <section class="content">
        <p>${article.content}</p>
        <p>Дополнительная информация...</p>
      </section>
    </article>
  </main>

  <footer>
    <p>&copy; 2024 Название сайта. Все права защищены.</p>
  </footer>

</body>
</html>