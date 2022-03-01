"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

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
        title='About',
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
