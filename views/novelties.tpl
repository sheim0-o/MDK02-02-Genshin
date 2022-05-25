% rebase('layout.tpl', title=title, year=year)
<% import json %>

<html>
	<head>
		<meta charset="latin9">
	</head>

	<body>
	    <form id = "form_nov">
			<h2 id = text-style-header>���������� ������� � ������ ������ ����</h2>
			<div id = paragraph>
				<p id = text-style><b>��������� ������ ����������</b></p>
				<p id = text-style>������� ���� ����������� ����� (�� ������� "yourMail@gmail.com"):</p> 
				<p><input type="text" name="MAIL" placeholder="������������ ����" id="mail" 
				pattern="^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$"></p>
				<p id = text-style>������� ����� ���������� (�� ������� N.NN):</p> 
				<input type="text" id = 1 name="NUMBERUPDATE" placeholder="������������ ����" pattern="^[0-9]{1,2}[.][0-9]{1,3}$">
				<p></p>
				<p id = text-style>������� ���������� �� ����������:</p>
				<p><textarea name="TEXT" rows="10" cols="50" name="QUEST" placeholder="������� ������"></textarea></p> 
				<p><input type="submit" value="���������" class="btn btn-default" id="btn" onclick="empty()"></p>
			</div>
		</form>

		<div id = paragraph>
			<p id = text-style><b>����� �� ������ ������������ �� �������������� ������� ����������:</b></p>
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
					<p id = text-style>������: {{news[i]['number']}}</p>
					<textarea id = text-style disabled>
						<% for j in range(len(news[i]['text'])): %>
							{{news[i]['text'][j]}}
						<% end %>
					</textarea>
					<p>��������� ��������� ��������: {{news[i]['mail']}}</p>
					<p>���� ���������� ���������: {{news[i]['date']}}</p>
					<br></br>
				<% end %>
			<% end %>
		</div>
	</body>

</html>

<script>
	function empty(){
		if (document.getElementById("1").value == ""){
			alert("Your field of number of version is empty")
		}
		else{
			document.getElementById("form_nov").action = "/home";
			document.getElementById("form_nov").method = "post";
		}
	}
</script>