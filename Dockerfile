FROM alpine
RUN apk -v add --no-cache \
        python \
        py-pip && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip
RUN adduser -D aws 
USER aws
WORKDIR /home/aws

