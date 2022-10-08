from flask import Flask
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)


@app.route('/')
def index():
    return "<h2>Hello Docker!</h2>"
    

if __name__ == '__main__':
    import os
    port = os.environ.get("PORT", 5000)
    app.run(host='0.0.0.0', port=port)