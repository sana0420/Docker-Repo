FROM python:3.12 AS base

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 8002

CMD [ "python" ,"./app.py"]