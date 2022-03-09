FROM python:3.8-alpine

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /application/requirements.txt

WORKDIR /application

RUN pip install -r /application/requirements.txt

COPY . /application

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD [ "application.py" ]