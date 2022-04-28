"""
Routes and views for the bottle application.
"""

from datetime import datetime
from bottle import response, route, view

@route('/')
@route('/general')
@view('general')
def general():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/lore')
@view('lore')
def lore():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/characters')
@view('characters')
def characters():
    """Renders the about page."""
    return dict(
        title='Characters',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/regions')
@view('regions')
def regions():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/reviews')
@view('reviews')
def reviews():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/articles')
@view('articles')
def articles():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/orders')
@view('orders')
def orders():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )

@route('/novelties')
@view('novelties')
def novelties():
    """Renders the about page."""
    return dict(
        year=datetime.now().year
    )