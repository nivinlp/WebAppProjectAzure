from flask import Flask

app = Flask(__name__)


from flask import Flask, render_template_string

app = Flask(__name__)

html_page = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Azure Hello World</title>
    <style>
        body {
            font-family: Segoe UI, Arial, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f3f6f9;
            color: #0078d4;
            text-align: center;
        }

        h1 { font-size: 3rem; margin-bottom: 20px; }
        p { font-size: 1.2rem; margin-bottom: 30px; }
        button {
            background-color: #0078d4; color: white; border: none;
            padding: 10px 20px; border-radius: 5px; font-size: 1rem;
            cursor: pointer;
        }
        button:hover { background-color: #005a9e; }
    </style>
</head>
<body>
    <h1>Hello there!</h1>
    <p>Welcome to your first Azure cloud Web app page.</p>
    <button onclick="alert('Hello from Azure!')">Click Me</button>
</body>
</html>
"""

@app.route('/')
def hello():
    return render_template_string(html_page)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)

