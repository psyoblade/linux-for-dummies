FROM ubuntu:18.04
LABEL maintainer="park.suhyuk@gmail.com"

RUN apt-get update && apt-get install -y rsync

EXPOSE 22 873
CMD ["/bin/bash"]
