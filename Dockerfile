FROM ubuntu
COPY 1lab.sh /1lab.sh
RUN chmod +x /1lab.sh
CMD ["/1lab.sh", "9"]
