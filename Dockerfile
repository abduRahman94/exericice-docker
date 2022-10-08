FROM python:3.9

WORKDIR /app

ENV FLASK_APP=app.py

ENV FLASK_RUN_HOST=0.0.0.0

ENV FLASK_DEBUG=1

COPY requirements.txt requirements.txt

RUN python -m pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run"]


# Dockerfile => Image Docker => Conteneur
#        Docker build   Docker run