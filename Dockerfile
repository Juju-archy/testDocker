FROM python:3.12-slim 

RUN apt-get update && apt-get install -y \
build-essential \
curl \
software-properties-common \
git \
&& rm -rf /var/lib/apt/lists/*

RUN pip install duckdb
RUN pip install numpy
RUN pip install pandas
RUN pip3 install polars
RUN pip3 install pyarrow
RUN pip3 install openpyxl
RUN pip3 install xlwt
RUN pip3 install boto3
RUN pip3 install botocore

COPY . /app
