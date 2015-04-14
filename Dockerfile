FROM qnib/monster
Maintainer "Christian Kniep <christian@qnib.org>"

## If you do not care about loggind in via ssh
RUN rm /etc/supervisord.d/sshd.ini && \
    rm /etc/consul.d/check_sshd.json && \
    rm /etc/default/logstash/*
ADD etc/default/logstash /etc/default/logstash/
ADD var/www/kibana/app/dashboards/ /var/www/kibana/app/dashboards/
