% rebase('layout.tpl', title=title, year=year)

<html>
 <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
       <title>Заказы</title>
</head>
<body>
    <h1>Оформить заказ</h1>
    <label>Ваш ник:
        <input type="text">
    </label>
    <p></p>
    <label>Ваш игровой id:
        <input type="text" placeholder="123456789" size="13">
    </label>
    <p></p>
    <label>Почта:
        <input type="email"  size="22">
    </label>
    <fieldset>
        <legend>Выберите желаемые товары</legend>
            <table>
                <tr>
                 <td><label>
                    <input type="checkbox"> "Благословение полой луны"
                  </label></td>
                  <td><label>
                    <input type="checkbox"> "Жемчужный Гимн" (Боевой пропуск)
                  </label></td>
                  <td><label>
                    <input type="checkbox"> "Жемчужный хор" (Боевой пропуск)
                  </label></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> "Набор поддержки"
                  </label></td>
                 <td><label>
                    <input type="checkbox"> "Набор начала путешествия"
                  </label></td>
                  <td><label>
                    <input type="checkbox"> "Набор дальнего путешествия"
                  </label></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> 300 "Кристалов сотворения"
                  </label></td>
                  <td><label>
                    <input type="checkbox"> 1980 "Кристалов сотворения"
                  </label></td>
                  <td><label>
                    <input type="checkbox"> 6480 "Кристалов сотворения"
                    </label></td>
                </tr>
            </table>
        <legend></legend>
    </fieldset>
    <p>Если вы оформляете заказ для другого человека, можете оставить пожелание, которое придет ему на внутриигровую почту:</p> 
    <p><textarea style="width:100%; height:150px;"></textarea></p>
    <label>Выберите желаемую дату получения
        <input type="date">
    </label>
    <p><input type="submit" value="Оформить заказ" class="btn btn-default"></p>
</body>
</html>
