from bottle import post, request, get
import json, datetime

@post('/user_review', method='post')
def review_form():
    mail = request.forms.get('MAIL')
    phone = request.forms.get('PHONE')
    review = request.forms.get('REVIEW')
    date = datetime.datetime.now()
    reviews = []
    try:
        with open('reviews.txt',encoding='latin1') as json_file:
            reviews = json.load(json_file)
    except:
        pass

    flag = 1
    if len(reviews) != 0:
        for rev in reviews:
            if mail == rev['mail']:
                rev['phone'] = phone
                rev['review'].append(review)
                rev['date'].append(date.strftime("%x"))
                flag = 0
        if flag == 1:
            reviews.append({'mail': mail, 'phone': phone, 'date': [date.strftime("%x")], 'review': [review]})
    else:
        reviews.append({'mail': mail, 'phone': phone, 'date': [date.strftime("%x")], 'review': [review]})
    
    with open('reviews.txt', 'w',encoding='latin1') as outfile:
        json.dump(reviews, outfile)
    return "Thanks! The answer will be sent to the mail"