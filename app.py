from flask import Flask

app = Flask(__name__)

@app.route('/devops', methods=['GET'])
def hello_world():
    return 'oh my DevOps'

if __name__ == '__main__':
    app.run(host='0.0.0.0')