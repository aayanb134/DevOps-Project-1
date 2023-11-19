from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route('/')
def hello():
    response = jsonify({'message': 'Hello World!'})
    return response


if __name__ == '__main__':
    app.run(debug=True)
