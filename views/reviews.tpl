% rebase('layout.tpl', year=year)
% import json

<header_char>
	<head>
		<h1>������</h1>
        <meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="/static/content/site.css" />
	</head>

	<body id="reviews">
		<form id="form_user_review">
			<h3> �������� ���� �����! </h3>
			<p><textarea input type="text" rows="3" cols="100" name="REVIEW" placeholder="����� �� ������ �������� ���� �����..." id="review"></textarea></p> 
			<p><input type="text" name="MAIL" placeholder="������� �����..." id="mail" 
			pattern="^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$" title="������� ����� � ��������� ������� - test@mail.ru"></p>
			<p><input type="text" name="PHONE" placeholder="������� ����� ��������..." id="phone" 
			pattern="^[+]\d[(]\d{3}[)]\d{3}[-]\d{2}[-]\d{2}$" title="������� ����� �������� � ��������� ������� - +#(###)###-##-##"></p>
			<p>���� � ������ ������� ��� ������� ���� ����������� �����, �� ����� �������� ����� ������� �� �����</p>
			<p><input type="submit" value="���������" class="btn btn-default" id="btn" onclick="rev_btn()"></p>
		</form>

		<br /><br /><br />
		<h3> ������ ������ �������������: </h3>
		<% reviews = [] %>
		<% try: %>
		<% with open('reviews.txt',encoding='latin1') as json_file: %>
			<% reviews = json.load(json_file) %>
		<% end %>
		<% except: %>
		<% pass %>
		<% end %>
		<% if len(reviews) > 0: %>
			<% for i in range(len(reviews)): %>
				<% c = len(reviews) - i -1 %>
				<% user_reviews = reviews[c]['review'] %>
				<% date_of_reviews = reviews[c]['date'] %>

				<form id="form_reviews_{{c+1}}">
					<h2>{{reviews[c]['mail']}}</h2>
					<h3>{{reviews[c]['phone']}}</h3>

						<ol>
							<% for j in range(len(user_reviews)): %>
								<p><textarea input type="text" rows="3" cols="50">{{user_reviews[j]}}</textarea></p>
								<p>{{date_of_reviews[j]}}</p>
							<% end %>
						</ol>
				</form>
			<% end %>
		<% end %>
	</body>
<script src="/static/scripts/scrLogicReviews.js"></script>
</header_char>