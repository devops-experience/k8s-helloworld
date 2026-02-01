FROM python:3.5-alpine

RUN adduser app -H -D -h /app
USER app

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install --upgrade pip && \
    pip install --user -r ./requirements.txt

COPY . /app

ENV FLASK_APP=app.py
ENV PATH="/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/app/.local/bin"

EXPOSE 5000

CMD ["python3", "./app.py"]
