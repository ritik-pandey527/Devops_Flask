from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Hello, Flask is working! 🎉</h1>"

@app.route('/about')
def about():
    return "<p>This is a simple test Flask app.</p>"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)