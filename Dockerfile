FROM python:alpine
WORKDIR /work
RUN pip install databricks-cli tqdm
RUN apk add expect 
