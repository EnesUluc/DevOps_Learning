from flask import Flask

app = Flask(__name__)

@app.route("/")
def say_hello():
    return "Hello! This is my flask applicaiton:)"

if __name__ == "__main__":
    app.run(host="0.0.0.0",port="2222")