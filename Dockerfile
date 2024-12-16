FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt-get update -y && apt-get install awscli  libpq-dev build-essential git p7zip p7zip-full -y 

RUN 7za x /app/artifacts/model_trainer/pegasus-samsum-model.7z

RUN pip install --no-cache-dir -r requirements1.txt

CMD ["python3", "app.py"]

