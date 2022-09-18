from flask import Flask

app = Flask(__name__)

@app.route('/')
def helloIndex():
    return 'Hello World, my name is Lisa Tang, version 1'

app.run(host='0.0.0.0', port=80)
