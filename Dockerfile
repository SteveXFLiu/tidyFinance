FROM python:3.10.11

RUN set -e -x && \
    apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes --no-install-recommends \
    fonts-liberation \
    pandoc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /tidyFinance

WORKDIR /tidyFinance
COPY . /tidyFinance

RUN set -e -x && \
    pip3 install --no-cache-dir -r requirements.txt
