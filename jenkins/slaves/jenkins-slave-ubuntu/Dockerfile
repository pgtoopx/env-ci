FROM ubuntu
LABEL maintainer="pgtoopx"

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && apt-get install -y sudo \
  && apt-get install -y openjdk-8-jdk-headless \
  && apt-get install -y maven \
  && rm -rf /var/lib/apt/lists/*

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

ENV JENKINS_HOME /home/${user}

# Jenkins is run with user `jenkins`, uid = 1000
RUN groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

COPY files/settings.xml  /usr/share/maven/conf/

RUN chown -R ${user}:${user} /home/${user}

# Add the jenkins user to sudoers
RUN echo "${user}    ALL=(ALL)    ALL" >> etc/sudoers

WORKDIR ${JENKINS_HOME}

# Set Name Servers
#COPY /files/resolv.conf /etc/resolv.conf