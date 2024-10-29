# app.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def welcome():
    return 'Welcome!'

@app.route('/how-are-you')
def response():
    return 'I am good, how about you?'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
