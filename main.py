from email.mime import application
from website import create_app

app = application
app = create_app()

if __name__ == '__main__':
    app.run(debug=True,)
