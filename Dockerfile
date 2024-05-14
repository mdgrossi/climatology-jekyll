FROM jupyter/base-notebook:python-3.11

WORKDIR /home/climatology/

COPY requirements.txt .

USER root

RUN apt-get update && apt-get install -y --no-install-recommends pkg-config gcc python3-dev libhdf5-dev

USER 1000

RUN pip install --upgrade pip setuptools wheel && \
  pip install -r requirements.txt