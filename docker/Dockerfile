

FROM chinachu/mirakurun:latest

COPY docker/pcsc.tgz  /app
COPY docker/pcsc-install.sh /app
##
RUN apt-get update && apt-get -y install git cmake pkg-config libpcsclite-dev
##
RUN /app/pcsckai-install.sh
