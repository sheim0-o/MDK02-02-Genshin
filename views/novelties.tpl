% rebase('layout.tpl', title=title, year=year)

<html>
	<head>
		<meta charset="latin9">
	</head>

	<body>
		<h2 id = text-style-header>Àêòóàëüíûå íîâèíêè è ñïèñîê âåðñèé èãðû</h2>
		<div id = paragraph>
			<p id = text-style><b>Äîïîëíèòü ñïèñîê îáíîâëåíèé</b></p>
			<p id = text-style>Ââåäèòå íîìåð îáíîâëåíèÿ (ïî ôîðìàòó N.NN):</p> 
			<input type="text" placeholder="Îáÿçàòåëüíîå ïîëå" pattern="^[0-9]+.[0-9]{1,2,3}$">
			<p></p>
			<p id = text-style>Ââåäèòå èíôîðìàöèþ îá îáíîâëåíèè:</p>
			<p><textarea  rows="10" cols="50" name="QUEST" placeholder="Íà÷íèòå ïèñàòü"></textarea></p> 
			<p><input type="submit" value="Îòïðàâèòü" class="btn btn-default" id="btn" onclick="rev_btn()"></p>
		</div>

		<div id = paragraph>
			<p id = text-style><b>Òàêæå âû ìîæåòå îçíàêîìèòüñÿ ñî ñôîðìèðîâàííûì ñïèñêîì îáíîâëåíèé:</b></p>
		</div>
	</body>

</html>