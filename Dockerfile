FROM python:3.9
RUN apt update
RUN apt install  python3-dev default-libmysqlclient-dev build-essential -y
WORKDIR /
RUN git clone https://github.com/aravindghoshar/flask-login-form.git
WORKDIR /flask-login-form
RUN pip3 install -r requirements.txt
CMD ["python3", "/flask-login-form/main.py"]
EXPOSE 5000