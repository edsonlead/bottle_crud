#!/usr/bin/python3
#
#  Author: Edson Silva
#  URL: https://edsonlead.com
#  E-mail: edsonlead@gmail.com
#
#

import traceback
import sqlite3


try:
    conn = sqlite3.connect('checklist.db')
    conn.execute("CREATE TABLE checklist(id INTEGER PRIMARY KEY,\
                        task VARCHAR(100) NOT NULL,\
                        description VARCHAR(200) NOT NULL,\
                        status VARCHAR(3) NOT NULL)")
    conn.commit()

except:
    error = traceback.format_exc()
    print('An error has occurred:\n', error)
    open('error.log', 'a').write(error)
    raise SystemExit
