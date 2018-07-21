FROM arm32v6/alpine:latest
COPY ./vlmcsd /opt/ms3rd/vlmcsd
RUN chmod +x /opt/ms3rd/vlmcsd
EXPOSE 1688
CMD ["/opt/ms3rd/vlmcsd", "-D", "-w", "-e", "-v"]
