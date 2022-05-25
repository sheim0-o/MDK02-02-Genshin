% rebase( 'layout.tpl', title=title, year=year, warn = warn)
% import json

<html>
 <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
       <title>������</title>
</head>
<body>
    <p></p>
    <% if warn == "2": %>
        <p>������������ ����� �����!</p>
    <% end %>
    <% if warn == "3": %>
        <p>������������ ������� ID!</p>
    <% end %>
     <% if warn == "1": %>
        <p>������� ���!</p>
    <% end %>
    <h1>�������� �����</h1>
    <form action="/home" method="post" >
        <label>��� ���:
            <input type="text" name="NICK">
        </label>
        <p></p>
        <label>��� ������� id:
            <input type="text" placeholder="123456789" size="13"  name="ID">
        </label>
        <p></p>
        <label>�����:
            <input type="text"  size="22" name="EMAIL">
        </label>
        <fieldset>
            <legend>�������� �������� ������</legend>
                <table>
                    <tr>
                     <td align="center"><label>
                        <input type="checkbox" value="������������� ������ ����" name="MOON"> "������������� ������ ����"    
                      </label>
                      <p></p>
                      <img src="static/Krisimg/moon.jpg" title="30-������� �������� � ���������� �������� � 90 ������ ������"></td>
                      <td align="center"><label>
                        <input type="checkbox"  value="��������� ����" name="BP1"> "��������� ����" (������ �������)
                      </label>
                       <p></p>
                      <img src="static/Krisimg/gimn.png"  style="width:135px; height:215px" title="����������� ������� ������� �������� � �������������� 4* ������ �� �����"></td></td>
                      <td align="center"><label>
                        <input type="checkbox"  value="��������� ���" name="BP2"> "��������� ���" (������ �������)
                      </label>
                       <p></p>
                      <img src="static/Krisimg/hor.png" style="width:135px; height:215px" title="��� ������������ ���������� ����, � ����� 10 ������� ������� ��������"></td></td>
                    </tr>
                    <tr>
                      <td align="center"><label>
                        <input type="checkbox" value="����� ���������" name="PACK1"> "����� ���������"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack1.png" title="����� �� 12 ���������� ��������� 2* �� �����"></td></td>
                     <td align="center"><label>
                        <input type="checkbox"  value="����� ������ �����������" name="PACK2"> "����� ������ �����������"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack2.png"  title="80 ����� �������� ����������� � 40 ���� ��������"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="����� �������� �����������" name="PACK3"> "����� �������� �����������"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/pack3.png" title="80 ����� �������� �����������, 40 ���� �������� � 1 ������ �����"></td></td>
                    </tr>
                    <tr>
                      <td align="center"><label>
                        <input type="checkbox" value="300 ��������� ����������" name="KS300"> 300 "��������� ����������"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/30.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="1980 ��������� ����������" name="KS1980"> 1980 "��������� ����������"
                      </label>
                       <p></p>
                      <img src="static/Krisimg/1980.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                      <td align="center"><label>
                        <input type="checkbox" value="6480 ��������� ����������" name="KS6480"> 6480 "��������� ����������"
                        </label>
                         <p></p>
                      <img src="static/Krisimg/6480.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                    </tr>
                </table>
            <legend></legend>
        </fieldset>
        <p>���� �� ���������� ����� ��� ������� ��������, ������ �������� ���������, ������� ������ ��� �� ������������� �����:</p> 
        <p><textarea style="width:100%; height:150px;" name="MESSAGE"></textarea></p>
        <label>�������� �������� ���� ���������
            <input type="date" name="DATE" value="2022-05-26">
        </label>
        <p><input type="submit" value="�������� �����" class="btn btn-default"></p>
    </form>
    <h3> ����������� ������: </h3>
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
                <p><b>������������:</b> {{nick}} <b>ID:</b> {{id}} <b>�����:</b>{{email}}</p>
                <p><b>�����:</b> {{products}} <b>��</b> {{date}} </p>
                <% if message != "": %>
                <p>���������:</p>
                <p><textarea disabled>{{message}}</textarea></p>
                <% end %>
                <p></p>
            <% end %>
        <% end %>
</body>
</html>
