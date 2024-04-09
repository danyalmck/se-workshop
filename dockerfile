FROM python:3.11

COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN apt-get update --fix-missing && \
apt-get upgrade -y

WORKDIR /app


COPY . .

EXPOSE 80

CMD ["python", "tmpproject/manage.py", "runserver", "0.0.0.0:80"]