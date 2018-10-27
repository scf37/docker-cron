FROM scf37/base:latest

RUN apt-get update && \
    apt-get install -y cron busybox-syslogd ssmtp && \
    apt-get install -y python python-pip python3 python3-pip libyaml-dev && \
    pip3 install requests pyyaml && \
    apt-get remove -y make g++ && \
    apt-get remove -y cpp-4.8 gcc-4.8 manpages manpages-dev && \
    apt-get autoremove -y && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY start.sh /opt/start
COPY conf /opt/conf

ENTRYPOINT ["/opt/start"]