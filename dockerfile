FROM python:3.7

WORKDIR /k8s-helloworld)

COPY . .

RUN apt-get -y update

RUN pip3 install -r requirements.txt

CMD [ "python","./app.py"]
