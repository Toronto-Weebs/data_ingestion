FROM python:3.9

COPY Makefile ./root
COPY requirements.txt ./root

WORKDIR ./root
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=US

RUN pip3 install -r requirements.txt

CMD ["bash"]
