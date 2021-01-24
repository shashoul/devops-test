FROM ubuntu

WORKDIR /app

COPY . .

RUN apt-get update \
    && apt-get install -y python3 python3-pip sudo  \
    && pip3 install -r requirements.txt

RUN useradd -ms /bin/bash test && echo "test:test" | chpasswd && adduser test sudo 

USER test

EXPOSE 5000

CMD ["python3","app.py"]