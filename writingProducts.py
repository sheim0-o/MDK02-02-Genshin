from bottle import post, request, view
import json, datetime
import re

@post('/home', method='post')
@view('orders')
def writing():
    listPr = []
    warning = 0;
    nick = request.forms.get('NICK') #получаем данные с формы
    id = request.forms.get('ID')
    email = request.forms.get('EMAIL')
    message = request.forms.get('MESSAGE')
    date = request.forms.get('DATE')
    moon  = str(request.forms.get('MOON'))
    bp1  = str(request.forms.get('BP1'))
    bp2  = str(request.forms.get('BP2'))
    pack1  = str(request.forms.get('PACK1'))
    pack2  = str(request.forms.get('PACK2'))
    pack3  = str(request.forms.get('PACK3'))
    ks300  = str(request.forms.get('KS300'))
    ks1980  = str(request.forms.get('KS1980'))
    ks6480  = str(request.forms.get('KS6480'))

     #проверка полей через регулярные выражения и на пустоту
    if check_mail(email) == False:
        warning = 2

    if check_Id(id) == False:
        warning = 3

    if nick == "":
        warning = 1

         #если ошиибок нет, записываем данные в файл и возвращаемся на основную страницу
    if warning == 0:
        products = moon + ", " + bp1  + ", " + bp2 + ", " + pack1 + ", " + pack2 + ", " + pack3 + ", " + ks300  + ", " + ks1980 + ", " + ks6480
        products = products.replace(", None", "")
        products = products.replace("None,", "")
        products =" ".join(products.split())

        try:
            with open('products.txt',encoding='latin1') as json_file:
                listPr = json.load(json_file)
        except:
            pass
        listPr.append({'Nick': nick, 'ID': id, 'Email': email, 'message':message, 'date':date, 'products':products})
        with open('products.txt', 'w',encoding='latin1') as outfile:
            json.dump(listPr, outfile, ensure_ascii=False, indent = 1)
        return dict( 
            title='Orders',
            message='Your application description page.',
            year=datetime.datetime.now().year,
            warn = "0"
        )
     #в ином случае возвращаемся на страницу и выводим ошибки
    else:
         return dict(
                title='Orders',
                message='Your application description page.',
                year=datetime.datetime.now().year,
                warn = str(warning)
            )


rMail = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+') # вводим регулярное выражения
def check_mail(mail): # проверяем почту на соответсвие шаблону
	if re.fullmatch(rMail, mail): # Определяет соответствие строки указанному шаблону.
		return bool(True);
	else:
		return bool(False);

rId = re.compile(r'[0-9]{9}')
def check_Id(Id): # проверяем почту на соответсвие шаблону
	if re.fullmatch(rId, Id): # Определяет соответствие строки указанному шаблону.
		return bool(True);
	else:
		return bool(False);