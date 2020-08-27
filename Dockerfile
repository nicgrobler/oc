FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y \
    tar \
    gzip \
    wget \
    && cd /opt \
    && wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.3.2/openshift-client-linux-4.3.2.tar.gz \
    && tar -zxf openshift-client-linux-4.3.2.tar.gz \
    && cp oc /usr/local/bin/ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/local/bin/oc"]
