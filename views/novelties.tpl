% rebase('layout.tpl', title=title, year=year)

<html>
	<head>
		<meta charset="latin9">
	</head>

	<body>
		<h2 id = text-style-header>���������� ������� � ������ ������ ����</h2>
		<div id = paragraph>
			<p id = text-style><b>��������� ������ ����������</b></p>
			<p id = text-style>������� ����� ���������� (�� ������� N.NN):</p> 
			<input type="text" placeholder="������������ ����" pattern="^[0-9]+.[0-9]{1,2,3}$">
			<p></p>
			<p id = text-style>������� ���������� �� ����������:</p>
			<p><textarea  rows="10" cols="50" name="QUEST" placeholder="������� ������"></textarea></p> 
			<p><input type="submit" value="���������" class="btn btn-default" id="btn" onclick="rev_btn()"></p>
		</div>

		<div id = paragraph>
			<p id = text-style><b>����� �� ������ ������������ �� �������������� ������� ����������:</b></p>
		</div>
	</body>

</html>