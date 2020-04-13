FROM centos:centos8

# Install Java 1.8
RUN yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel which -y

# Add Atlassian's Yum repository
RUN echo $'[Artifactory]\n\
name=Artifactory\n\
baseurl=https://packages.atlassian.com/yum/atlassian-sdk-rpm/\n\
enabled=1\n\
gpgcheck=0' > /etc/yum.repos.d/artifactory.repo 

# Get Atlassian's public key
ADD "https://packages.atlassian.com/api/gpg/key/public" .

# Install the Atlassian Plugin SDK
RUN yum clean all\
  && yum updateinfo metadata\
  && yum install atlassian-plugin-sdk -y

# Update the Atlassian CLI
RUN atlas-update

