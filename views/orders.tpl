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
                    <input type="checkbox"> "Благословение полной луны"    
                  </label>
                  <p></p>
                  <img src="static/Krisimg/moon.jpg" title="30-дневная подписка с ежедневной наградой в 90 камней истока"></td>
                  <td><label>
                    <input type="checkbox"> "Жемчужный Гимн" (Боевой пропуск)
                  </label>
                   <p></p>
                  <img src="static/Krisimg/gimn.png"  style="width:135px; height:215px" title="Расширенные награды боевого пропуска и дополнительное 4* оружие на выбор"></td></td>
                  <td><label>
                    <input type="checkbox"> "Жемчужный хор" (Боевой пропуск)
                  </label>
                   <p></p>
                  <img src="static/Krisimg/hor.png" style="width:135px; height:215px" title="Все преимущества Жемчужного хора, а также 10 уровней боевого пропуска"></td></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> "Набор поддержки"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack1.png" title="Набор из 12 материалов улучшения 2* на выбор"></td></td>
                 <td><label>
                    <input type="checkbox"> "Набор начала путешествия"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack2.png"  title="80 опыта искателя приключений и 40 руды усиления"></td></td>
                  <td><label>
                    <input type="checkbox"> "Набор дальнего путешествия"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack3.png" title="80 опыта искателя приключений, 40 руды усиления и 1 слабая смола"></td></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> 300 "Кристалов сотворения"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/30.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
                  <td><label>
                    <input type="checkbox"> 1980 "Кристалов сотворения"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/1980.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
                  <td><label>
                    <input type="checkbox"> 6480 "Кристалов сотворения"
                    </label>
                     <p></p>
                  <img src="static/Krisimg/6480.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
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
