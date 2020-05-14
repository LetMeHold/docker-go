FROM letmehold/centos:7.6

ARG PKG=go1.14.2.linux-amd64.tar.gz

RUN curl -OL https://dl.google.com/go/${PKG} \
    && tar -xf ${PKG} -C /usr/local/ \
    && rm -rf ${PKG} \
    && mkdir ~/go

ENV GOROOT=/usr/local/go GOPATH=/root/go
ENV PATH=$GOROOT/bin:$PATH
