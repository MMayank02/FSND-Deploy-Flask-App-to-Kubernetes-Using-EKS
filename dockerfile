# Comment
FROM  python:stretch
COPY  . /home/mayank/Udacity/app
WORKDIR /home/mayank/Udacity/app

RUN apt-get update -y
RUN pip install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
