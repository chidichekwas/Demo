from flask import Flask


app = Flask(__name__)


@app.route("/")
def hello_world():
    return "Hello, World!"


@app.route("/fancy")
def hello_world_fancy():
    greetings = """
    <html>
    <body>

    <h1>Greetings!</h1>
    <p>Hello, world!</p>

    </body>
    </html>
    """
    return greetings


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)