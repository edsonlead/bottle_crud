#!/usr/bin/python
#
# app.py - run server
#
# author = {'name': 'Edson Silva', 'email': 'edsonlead@gmail.com'}
# 
# ----------------------------------------------------------------------------
#
# This program runs the server to functioning this application that makes using
# the Bottle Framework
#
# Examples:
#   $ python app.py
#   
# License: 
#


import os
from project import app
from bottle import debug, run


debug(True)
if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))
    run(app, reloader=True, host='127.0.0.1', port=port)
