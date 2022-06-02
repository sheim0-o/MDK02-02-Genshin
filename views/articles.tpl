% rebase('layoutNovelties.tpl', title=title, year=year)
%import json

<html>
<head>
<meta charset="latin9">
</head>

<body>
	<div class="note__wrap">
		<div class="container_horizontal">
			<div class="note" style="background-image: url(../img/note_articles.png)">
				<ul class="note__sidebar">
					<div id="listButton" class="section" style="max-height: 760px">
						<% out = [] %>
						<% with open('articles.json', encoding='latin1') as json_file: %>
							<% out = json.load(json_file) %>
						<% for art in out: %>
							<li id="{{ art['id'] }}" data-index="{{ art['id'] }}" title="{{ art['title'] }}" class="note__tab" onclick="customClickButton(this.id, '{{str(art['text'])}}', '{{str(art['title'])}}')">{{ art['title'] }}</li>
						<% end %>
					</div>
				</ul>
				<div class="note__content-wrap">
					<div class="note__content">
						<h2 id="titlenote" class="note__title"> Ñòàòüè </h2>
						<div class="section">
							<div class="limiter">
								<p>
									<span id="textArticle">
									
									</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="editor__wrap" style="margin: 150px">
				<div class="editor__content">
					<form id="articleProcessor" action='/articles' method="post">
						<h3> Íàïèñàòü ñòàòüþ </h3>
						<p><input type="text" name="TITLE" placeholder="Íàçâàíèå ñòàòüè" id="title " required></p>
						<p><textarea input type="text" wrap="soft" rows="3" cols="100" name="ARTICLES" required placeholder="Ñòàòüÿ" id="articles" minlength="100" maxlength="10000"></textarea></p> 
						<p><input type="text" name="AUTHOR" placeholder="Ââåäèòå àâòîðà" id="author" minlength="5" required></p>
						<p><input type="text" name="PHONE" placeholder="Ââåäèòå íîìåð òåëåôîíà..." id="phone" 
						pattern="^[+]\d[(]\d{3}[)]\d{3}[-]\d{2}[-]\d{2}$" required title="Ââåäèòå íîìåð òåëåôîíà â óêàçàííîì ôîðìàòå - +#(###)###-##-##"></p>
						<p><input type="submit" value="Ñîçäàòü" class="btn btn-default" id="btn"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	
</body>

<script>
	function customClickButton(id, val, title){
		var size = {{ len(out) }}
		var textArticle = document.getElementById("textArticle");
		var titleNoote = document.getElementById("titlenote");
		titleNoote.innerHTML = title;
		textArticle.setAttribute("style", "font-size:14px;");
		textArticle.innerHTML = val;
		switchStyleButton(id);
	}

	function switchStyleButton(id){
		var listButton = document.querySelectorAll(".note__tab.note__tab--active");
		listButton.forEach(element => {
			element.setAttribute("class", "note__tab");
		});
		var button = document.getElementById(id);
		button.setAttribute("class", "note__tab note__tab--active")
	}
</script>

</html>