from email.mime import application
from website import create_app

application = create_app()

if __name__ == '__main__':
    application.run(host='0.0.0.0', port= 5013, debug=True,)
