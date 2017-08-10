# Base container
FROM golang:1.8
MAINTAINER https://github.com/uso8000k/

# Environment
ENV TIMEZONE Asia/Tokyo

# Add script to build
ADD scripts/build.sh /opt/build.sh
RUN /opt/build.sh
ADD files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add script to run
ADD scripts/run.sh   /opt/run.sh

# Start
ENTRYPOINT ["/opt/run.sh"]
