% rebase('layout.tpl', title=title, year=year)

<html>
 <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
       <title>������</title>
</head>
<body>
    <h1>�������� �����</h1>
    <label>��� ���:
        <input type="text">
    </label>
    <p></p>
    <label>��� ������� id:
        <input type="text" placeholder="123456789" size="13">
    </label>
    <p></p>
    <label>�����:
        <input type="email"  size="22">
    </label>
    <fieldset>
        <legend>�������� �������� ������</legend>
            <table>
                <tr>
                 <td><label>
                    <input type="checkbox"> "������������� ������ ����"    
                  </label>
                  <p></p>
                  <img src="static/Krisimg/moon.jpg" title="30-������� �������� � ���������� �������� � 90 ������ ������"></td>
                  <td><label>
                    <input type="checkbox"> "��������� ����" (������ �������)
                  </label>
                   <p></p>
                  <img src="static/Krisimg/gimn.png"  style="width:135px; height:215px" title="����������� ������� ������� �������� � �������������� 4* ������ �� �����"></td></td>
                  <td><label>
                    <input type="checkbox"> "��������� ���" (������ �������)
                  </label>
                   <p></p>
                  <img src="static/Krisimg/hor.png" style="width:135px; height:215px" title="��� ������������ ���������� ����, � ����� 10 ������� ������� ��������"></td></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> "����� ���������"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack1.png" title="����� �� 12 ���������� ��������� 2* �� �����"></td></td>
                 <td><label>
                    <input type="checkbox"> "����� ������ �����������"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack2.png"  title="80 ����� �������� ����������� � 40 ���� ��������"></td></td>
                  <td><label>
                    <input type="checkbox"> "����� �������� �����������"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/pack3.png" title="80 ����� �������� �����������, 40 ���� �������� � 1 ������ �����"></td></td>
                </tr>
                <tr>
                  <td><label>
                    <input type="checkbox"> 300 "��������� ����������"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/30.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                  <td><label>
                    <input type="checkbox"> 1980 "��������� ����������"
                  </label>
                   <p></p>
                  <img src="static/Krisimg/1980.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                  <td><label>
                    <input type="checkbox"> 6480 "��������� ����������"
                    </label>
                     <p></p>
                  <img src="static/Krisimg/6480.jpg" style="width:250px; height:250px" title="��������� ���������� �������������� � ����� ������ � ����������� 1:1"></td></td>
                </tr>
            </table>
        <legend></legend>
    </fieldset>
    <p>���� �� ���������� ����� ��� ������� ��������, ������ �������� ���������, ������� ������ ��� �� ������������� �����:</p> 
    <p><textarea style="width:100%; height:150px;"></textarea></p>
    <label>�������� �������� ���� ���������
        <input type="date">
    </label>
    <p><input type="submit" value="�������� �����" class="btn btn-default"></p>
</body>
</html>
