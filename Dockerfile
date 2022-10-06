FROM python:alpine
WORKDIR /work
RUN pip install --upgrade pip
RUN pip install databricks-cli tqdm
RUN apk add expect 
