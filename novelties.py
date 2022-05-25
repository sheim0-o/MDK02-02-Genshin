from bottle import post, request, get, route, template, view
import json, datetime


@post('/home', method="post")
@view('novelties')
def nov():
    numberUpdate = str(request.forms.get('NUMBERUPDATE'))
    eMail = str(request.forms.get('MAIL'))
    text = str(request.forms.get('TEXT'))
    date = datetime.datetime.now()  # Дата для JSON-файла
    out = []
    '''
    В данном блоке происходит запись в JSON.
    При помощи выше объявленного листа sFAGF мы уже сформированную информацию
    отправляем прямо в файл. Далее небольшая косметическая редакция для "красивого"
    и понятного вывода информации в файл.
    '''
    try:
        with open('novelties.txt',encoding='latin1') as json_file:
            out = json.load(json_file)
    except:
        pass
    indicator = 0;
    if len(out)>0:
        for i in out:
            if i['number']==numberUpdate:
                i['mail'] = eMail
                i['text'].append(text)
                i['date'] = date.strftime("%x") + " " + date.strftime("%X")
                indicator = 1
        if indicator == 0:
            out.append({'date': date.strftime("%x") + " " + date.strftime("%X"), 'mail': eMail, 'number': numberUpdate, 'text': [text]})
    else:
        out.append({'date': date.strftime("%x") + " " + date.strftime("%X"), 'mail': eMail, 'number': numberUpdate, 'text': [text]})
    with open('novelties.txt', 'w',encoding='latin1') as outfile:
        json.dump(out, outfile, indent=1)  # indent позволяет построчно вывести лист (для удобства "человеческого" чтения)

    return dict(
        title='Articles',
        message='Your application description page.',
        year=datetime.datetime.now().year)
    
    # Перенаправление на существующую страницу
    # return template("novelties", eMail = eMail, text = text, numberUpdate = numberUpdate)