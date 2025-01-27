FROM nginx:latest
RUN rm -f /var/log/nginx/access.log && rm -f /var/log/nginx/error.log
COPY default.conf /etc/nginx/conf.d/default.conf

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-$([ $(uname -m) = 'x86_64' ] && echo amd64 || echo arm64).deb && \
    dpkg -i filebeat-7.13.0-$([ $(uname -m) = 'x86_64' ] && echo amd64 || echo arm64).deb

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]