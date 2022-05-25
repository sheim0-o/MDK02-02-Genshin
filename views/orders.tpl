% rebase( 'layout.tpl', title=title, year=year, warn = warn)
% import json

<html>
 <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
       <title>Заказы</title>
</head>
<body>
    <p></p>
    <% if warn == "2": %>
        <p>Некорректный адрес почты!</p>
    <% end %>
    <% if warn == "3": %>
        <p>Некорректный игровой ID!</p>
    <% end %>
     <% if warn == "1": %>
        <p>Укажите ник!</p>
    <% end %>
    <h1>Оформить заказ</h1>
    <form action="/home" method="post" >
        <label>Ваш ник:
            <input type="text" name="NICK">
        </label>
        <p></p>
        <label>Ваш игровой id:
            <input type="text" placeholder="123456789" size="13"  name="ID">
        </label>
        <p></p>
        <label>Почта:
            <input type="text"  size="22" name="EMAIL">
        </label>
        <fieldset>
            <legend>Выберите желаемые товары</legend>
                <table>
                    <tr>
                     <td align="center"><label>
                        <input type="checkbox" value="Благословение полной луны" name="MOON"> "Благословение полной луны"    
                      </label>
                      <p></p>
                      <img src="static/Krisimg/moon.jpg" title="30-дневная подписка с ежедневной наградой в 90 камней истока"></td>
                      <td align="center"><label>
                        <input type="checkbox"  value="Жемчужный Гимн" name="BP1"> "Жемчужный Гимн" (Боевой пропуск)
                      </label>
                       <p></p>
                      <img src="static/Krisimg/gimn.png"  style="width:135px; height:215px" title="Расширенные награды боевого пропуска и дополнительное 4* оружие на выбор"></td></td>
                      <td align="center"><label>
                        <input type="checkbox"  value="Жемчужный Хор" name="BP2"> "Жемчужный хор" (Боевой пропуск)
                      </label>
                       <p></p>
                      <img src="static/Krisimg/hor.png" style="width:135px; height:215px" title="Все преимущества Жемчужного хора, а также 10 уровней боевого пропуска"></td></td>
                    </tr>
                    <tr>
                      <td align="center"><label>
                        <input type="checkbox" value="Набор поддержки" name="PACK1"> "Набор поддержки"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack1.png" title="Набор из 12 материалов улучшения 2* на выбор"></td></td>
                     <td align="center"><label>
                        <input type="checkbox"  value="Набор начала путешествия" name="PACK2"> "Набор начала путешествия"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack2.png"  title="80 опыта искателя приключений и 40 руды усиления"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="Набор дальнего путешествия" name="PACK3"> "Набор дальнего путешествия"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack3.png" title="80 опыта искателя приключений, 40 руды усиления и 1 слабая смола"></td></td>
                    </tr>
                    <tr>
                      <td align="center"><label>
                        <input type="checkbox" value="300 Кристалов сотворения" name="KS300"> 300 "Кристалов сотворения"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/30.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="1980 Кристалов сотворения" name="KS1980"> 1980 "Кристалов сотворения"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/1980.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="6480 Кристалов сотворения" name="KS6480"> 6480 "Кристалов сотворения"
                        </label>
                         <p></p>
                      <img src="static/Krisimg/6480.jpg" style="width:250px; height:250px" title="Кристаллы сотворения конвертируются в камни истока в соотношении 1:1"></td></td>
                    </tr>
                </table>
            <legend></legend>
        </fieldset>
        <p>Если вы оформляете заказ для другого человека, можете оставить пожелание, которое придет ему на внутриигровую почту:</p> 
        <p><textarea style="width:100%; height:150px;" name="MESSAGE"></textarea></p>
        <label>Выберите желаемую дату получения
            <input type="date" name="DATE" value="2022-05-26">
        </label>
        <p><input type="submit" value="Оформить заказ" class="btn btn-default"></p>
    </form>
    <h3> Оформленные заказы: </h3>
		<% orders = [] %>
		<% try: %>
		<% with open('products.txt',encoding='latin1') as json_file: %>
			<% orders = json.load(json_file) %>
		<% end %>
		<% except: %>
		<% pass %>
		<% end %>
		<% if len(orders) > 0: %>
            <% for i in range(len(orders)): %>
				<% nick = orders[i]['Nick'] %>
                <% id = orders[i]['ID'] %>
                <% email = orders[i]['Email'] %>
                <% message = orders[i]['message'] %>
                <% date = orders[i]['date'] %>
                <% products = orders[i]['products'] %>
                <p><b>Пользователь:</b> {{nick}} <b>ID:</b> {{id}} <b>Почта:</b>{{email}}</p>
                <p><b>Заказ:</b> {{products}} <b>на</b> {{date}} </p>
                <% if message != "": %>
                <p>Сообщение:</p>
                <p><textarea disabled>{{message}}</textarea></p>
                <% end %>
                <p></p>
            <% end %>
        <% end %>
</body>
</html>
