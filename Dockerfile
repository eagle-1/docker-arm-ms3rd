FROM arm32v6/alpine:latest
COPY ./vlmcsd /opt/ms3rd/vlmcsd
RUN chmod +x /opt/ms3rd/vlmcsd && \
    apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "Europe/Berlin" > /etc/timezone && \
    apk --no-cache del tzdata
EXPOSE 1688
CMD ["/opt/ms3rd/vlmcsd", "-D", "-e", "-v"]
