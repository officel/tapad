FROM alpine:latest

LABEL name="tapad"
LABEL version="1.4"
LABEL maintainer="https://github.com/officel"

ENV TERRAFORM_VERSION 0.12.20
ENV PACKER_VERSION 1.5.1

RUN apk --update add --no-cache ansible py3-pip openssh ca-certificates wget && \
    pip3 install --upgrade pip botocore boto3 awscli && \
    ansible-galaxy install Datadog.datadog

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
    rm -f ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip ./packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
    rm -f ./packer_${PACKER_VERSION}_linux_amd64.zip

COPY info.sh /info.sh

WORKDIR /home

CMD ["/info.sh"]

