#!/usr/bin/python
#
# controller.py - layer control of MVC pattern
#
# author = {'name': 'Edson Silva', 'email': 'edsonlead@gmail.com'}
# 
# ----------------------------------------------------------------------------
#
# This layer control contains the CRUD - create, read, update and delete
#
#


import traceback
import sqlite3
from bottle import debug, error, redirect, request
from bottle import route, run, static_file, template


@route('/')
@route('/index')
def index():
    conn = sqlite3.connect('checklist.db')
    cl = conn.cursor()
    cl.execute("SELECT id, task, description, status FROM checklist")
    result = cl.fetchall()
    cl.close()
    output = template('index', rows=result)
    return output

try:
    index()
except:
    error = traceback.format_exc()
    print('An error has occurred:\n', error)
    open('error.log', 'a').write(error)
    raise SystemExit


@route('/new', method='GET')
def new():
    try:
        if request.GET.get('save', '').strip():
            task = request.GET.get('task', '').strip()
            description = request.GET.get('description', '').strip()
            status = request.GET.get('status', '').strip()
            if status == "Yes":
                status = "Yes"
            else:
                status = "No"

            conn = sqlite3.connect('../models/checklist.db')
            cl = conn.cursor()
            cl.execute("INSERT INTO checklist (task,description,status)\
                        VALUES (?,?,?)", (task, description, status))
            new_id = cl.lastrowid
            conn.commit()
            cl.close()
            return '<p>The new task (ID = %s) was inserted.</p>' % new_id
            redirect("/index")
        else:
            return template('new_task.tpl')
    except:
        error = traceback.format_exec()
        print('An error has occurred:\n', error)
        open('error.log', 'a').write(error)
        raise SystemExit


@route('/update/<no:int>', method='GET')
def update(no):
    try:
        if request.GET.get('update', '').strip():
            task = request.GET.get('task', '').strip()
            description = request.GET.get('description', '').strip()
            status = request.GET.get('status', '').strip()
            if status == "Yes":
                status = "Yes"
            else:
                status = "No"

            conn = sqlite3.connect('../models/checklist.db')
            cl = conn.cursor()
            cl.execute("UPDATE checklist SET task = ? , description = ? ,\
                    status = ? WHERE id = ?", (task, description, status, no))
            conn.commit()
            return '<p>The Task %s was updated!</p>' % no
        else:
            conn = sqlite3.connect('../model/checklist.db')
            cl = conn.cursor()
            cl.execute("SELECT task, description, status FROM checklist WHERE\
                id = ?", (str(no)))
            cur_data = cl.fetchone()
            return template('update_task', old=cur_data, no=no)
    except:
        error = traceback.format_exc()
        print('An error has occurred:\n', error)
        open('error.log', 'a').write(error)
        raise SystemExit


@route('/delete/<no:int>', method='GET')
def delete(no):
    try:
        conn = sqlite3.connect('../models/checklist.db')
        cl = conn.cursor()
        cl.execute("DELETE FROM checklist WHERE id = ?", (str(no)))
        conn.commit()
        return '<p>The task ID = %s was delete!</p>' % no
    except:
        error = traceback.format_exc()
        print('An error has occurred:\n', error)
        open('error.log', 'a').write(error)
        raise SystemExit


debug(True)
run(reloader=True)
