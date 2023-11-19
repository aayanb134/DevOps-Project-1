FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "./api.py" ]