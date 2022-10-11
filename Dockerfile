FROM python:3
WORKDIR /code
COPY . .
RUN pip install -r requirements.txt
RUN pip install gunicorn
CMD gunicorn --bind 0.0.0.0:5000 app:app
