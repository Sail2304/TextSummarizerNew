FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt-get update -y && apt-get install awscli  libpq-dev build-essential git p7zip p7zip-full -y 

RUN pip install --no-cache-dir -r requirements1.txt

CMD ["7za","x","artifacts/model_trainer/pegasus-samsum-model.7z"; "python3", "app.py"]
