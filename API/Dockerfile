FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN /bin/sh -c pip3 --no-cache-dir install -r requirements.txt

COPY . /app

EXPOSE 5000

CMD [ "python3", "./api.py" ]