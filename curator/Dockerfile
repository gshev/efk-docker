FROM alpine:latest

RUN apk --update add python py-pip && \
    pip install elasticsearch-curator

# add tasks scripts
ADD ./tasks /etc/periodic/daily
RUN chmod a+x /etc/periodic/daily/*

CMD ["crond", "-f", "-l", "8"]
