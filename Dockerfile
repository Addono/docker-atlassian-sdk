#ARG BASE_IMAGE=adoptopenjdk/openjdk8:slim
ARG BASE_IMAGE=centos:latest
FROM $BASE_IMAGE

RUN yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel which -y

RUN echo $'[Artifactory]\n\
name=Artifactory\n\
baseurl=https://packages.atlassian.com/yum/atlassian-sdk-rpm/\n\
enabled=1\n\
gpgcheck=0' > /etc/yum.repos.d/artifactory.repo 

ADD "https://packages.atlassian.com/api/gpg/key/public" .

RUN yum clean all
RUN yum updateinfo metadata
RUN yum install atlassian-plugin-sdk -y

RUN atlas-update

#RUN apt-get update && apt-get upgrade -y \
#    && apt-get install -y --no-install-recommends gnupg2
#RUN sudo apt-key add ./public

#RUN apt-get update && apt-get upgrade -y

#RUN apt-get install -y --no-install-recommends atlassian-plugin-sdk
