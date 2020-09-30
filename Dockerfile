FROM debian:jessie
MAINTAINER Tanuj Singh <tanuj.singh02@infosys.com>

RUN apt-get update && \
    apt-get install -y python python-pip cron && \
    rm -rf /var/lib/apt/lists/*

RUN pip install s3cmd

ADD s3cfg /root/.s3cfg

ADD start.sh /start.sh
RUN chmod +x /start.sh

ADD upload.sh /upload.sh
RUN chmod +x /upload.sh

ENTRYPOINT ["/start.sh"]

CMD [""]

