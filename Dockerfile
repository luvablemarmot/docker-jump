FROM debian:jessie
MAINTAINER Ric Harvey <ric@ngineered.co.uk>

RUN apt-get install -y openssh-server mkpasswd && \
    apt-get clean && \
    echo -n > /var/lib/apt/extended_states
RUN mkdir -p /var/run/sshd

ADD supervisord.conf /etc/supervisor/conf.d/sshd.conf

EXPOSE 22
CMD ["/bin/bash", "/start.sh"]

