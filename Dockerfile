FROM alpine:latest
COPY ./vlmcsd /opt/ms3rd/vlmcsd
EXPOSE 1688
CMD ["/opt/ms3rd/vlmcsd", "-D", "-w", "06401-00206-275-728847-03-5130-9600.0000-1892014", "-0", "05426-00096-200-148791-03-1069-9200.0000-1322014", "-e", "-v"]
