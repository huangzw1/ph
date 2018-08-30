#!flask/bin/python
# -- coding: utf-8 --

__author__ = 'cloudtogo'

from flask import Flask


app = Flask(__name__)


@app.route('/')
def hello():
    return "hello world!!!"

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000)
