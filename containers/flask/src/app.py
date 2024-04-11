from flask import Flask, render_template
import socket

app = Flask(__name__)

@app.route("/")
def hello():
    hostname=socket.gethostname()
    ipaddr=socket.gethostbyname(hostname)

    return render_template('index.html', hostname=hostname, ipaddr=ipaddr)