from bottle import post, request, view
import json, datetime, string

@post('/articles', method="post")
@view('articles')
def nov():
    title = str(request.forms.get('TITLE'))
    articles = str(request.forms.get('ARTICLES'))
    author = str(request.forms.get('AUTHOR'))
    phone = str(request.forms.get('PHONE'))
    date = datetime.datetime.now() 
    out = []
    articles = articles.replace("\n", "<br>");
    articles = articles.replace('\r', "<br>");
    with open('articles.json', encoding='latin1') as json_file:
        out = json.load(json_file)
        out.append({'id': len(out), 'date': date.strftime("%x") + " " + date.strftime("%X"), 'title': title, 'text': str(articles), 'author': author, 'phone': phone})

    with open('articles.json', 'w', encoding='latin1') as outfile:
        json.dump(out, outfile, ensure_ascii=False, indent=1)

    return dict(title='Articles', 
                message='Your application description page.', 
                year=datetime.datetime.now().year)


