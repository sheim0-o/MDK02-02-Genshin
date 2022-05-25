from bottle import post, request
import json

@post('/home', method='post')
def writing():
    listPr = []
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
