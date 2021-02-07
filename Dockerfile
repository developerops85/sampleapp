FROM alpine:latest

MAINTAINER Takttimeteam <bharath.kumar@takttimecloud.com>

WORKDIR /usr/apps/hello-docker/

RUN yum -y update

RUN yum install -y nodejs

RUN yum install -y npm


RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
