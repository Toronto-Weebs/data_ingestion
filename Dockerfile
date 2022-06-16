FROM python:3.9

COPY Makefile ./root
COPY requirements.txt ./root
COPY setup.sh ./root

WORKDIR ./root

RUN pip3 install -r requirements.txt

CMD ["bash"]

RUN bash setup.sh
# RUN make config
# Used to configurate enrich_dsa, setup ENRICH_DB password