FROM python:3.9.19-alpine3.19

EXPOSE 5000

WORKDIR /app

COPY requirements.txt .

RUN python3 -m pip install -r requirements.txt --no-cache-dir

COPY app.py .

CMD [ "python", "app.py" ]