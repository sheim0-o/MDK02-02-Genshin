% rebase('layout.tpl', title=title, year=year)

<html>
	<head>
		<meta charset="latin9">
	</head>

	<body>
	    <form action="/novelties" method="post">
			<h2 id = text-style-header>���������� ������� � ������ ������ ����</h2>
			<div id = paragraph>
				<p id = text-style><b>��������� ������ ����������</b></p>
				<p id = text-style>������� ���� ����������� ����� (�� ������� "yourMail@gmail.com"):</p> 
				<p><input type="text" name="MAIL" placeholder="������������ ����" id="mail" 
				pattern="^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$"></p>
				<p id = text-style>������� ����� ���������� (�� ������� N.NN):</p> 
				<input type="text" name="BUMBERUPDATE" placeholder="������������ ����" pattern="^[0-9]+.[0-9]{1,2,3}$">
				<p></p>
				<p id = text-style>������� ���������� �� ����������:</p>
				<p><textarea name="TEXT" rows="10" cols="50" name="QUEST" placeholder="������� ������"></textarea></p> 
				<p><input type="submit" value="���������" class="btn btn-default" id="btn" onclick="rev_btn()"></p>
			</div>
		</form>

		<div id = paragraph>
			<p id = text-style><b>����� �� ������ ������������ �� �������������� ������� ����������:</b></p>
		</div>
	</body>

</html>