FROM pandoc/ubuntu:2.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
        python3-lxml \
        python3-pandocfilters \
        python3-pip \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 install atlassian-python-api
