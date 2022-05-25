% rebase('layout.tpl', title=title, year=year)
<% import json %>

<html>
	<head>
		<meta charset="latin9">
	</head>

	<body>
	    <form action="/home" method="post">
			<h2 id = text-style-header>Àêòóàëüíûå íîâèíêè è ñïèñîê âåðñèé èãðû</h2>
			<div id = paragraph>
				<p id = text-style><b>Äîïîëíèòü ñïèñîê îáíîâëåíèé</b></p>
				<p id = text-style>Ââåäèòå ñâîþ ýëåêòðîííóþ ïî÷òó (ïî ôîðìàòó "yourMail@gmail.com"):</p> 
				<p><input type="text" name="MAIL" placeholder="Îáÿçàòåëüíîå ïîëå" id="mail" 
				pattern="^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$"></p>
				<p id = text-style>Ââåäèòå íîìåð îáíîâëåíèÿ (ïî ôîðìàòó N.NN):</p> 
				<input type="text" name="NUMBERUPDATE" placeholder="Îáÿçàòåëüíîå ïîëå" pattern="^[0-9]+.[0-9]{1,3}$">
				<p></p>
				<p id = text-style>Ââåäèòå èíôîðìàöèþ îá îáíîâëåíèè:</p>
				<p><textarea name="TEXT" rows="10" cols="50" name="QUEST" placeholder="Íà÷íèòå ïèñàòü"></textarea></p> 
				<p><input type="submit" value="Îòïðàâèòü" class="btn btn-default" id="btn" onclick="rev_btn()"></p>
			</div>
		</form>

		<div id = paragraph>
			<p id = text-style><b>Òàêæå âû ìîæåòå îçíàêîìèòüñÿ ñî ñôîðìèðîâàííûì ñïèñêîì îáíîâëåíèé:</b></p>
			<% news = [] %>
			<% try: %>
				<% with open('novelties.txt',encoding='latin1') as json_file: %>
					<% news = json.load(json_file) %>
			<% end %>
			<% except: %>
				<% pass %>
			<% end %>
			<% if len(news) > 0: %>
				<% for i in range(len(news)): %>
					<p id = text-style>Âåðñèÿ: {{news[i]['number']}}</p>
					<textarea disabled id = text-style>
						<% for j in range(len(news[i]['text'])): %>
							{{news[i]['text'][j]}}
						<% end %>
					</textarea>
					<p>Ïîñëåäíåå èçìåíåíèå ïðîèçâåë: {{news[i]['mail']}}</p>
					<p>Äàòà ïîñëåäíåãî èçìåíåíèÿ: {{news[i]['date']}}</p>
					<br></br>
				<% end %>
			<% end %>
		</div>
	</body>

</html>