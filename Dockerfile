FROM python:3.9

WORKDIR /tmp/backend

COPY requirements.txt /tmp/backend
RUN pip install -r requirements.txt

COPY . /tmp/backend

EXPOSE 8000

CMD python /tmp/backend/manage.py runserver 0.0.0.0:8000
