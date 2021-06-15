FROM registry.access.redhat.com/ubi8/ubi:latest
LABEL maintainer Francesco Zanti <francesco@tekapp.it> 

RUN useradd -ms /bin/bash tecnico && usermod -aG wheel tecnico

RUN dnf update -y

RUN dnf install -y git nss at-spi2-atk libX11-xcb gdk-pixbuf2 gtk3 libdrm mesa-libgbm alsa-lib wget 

RUN dnf install -y gcc-c++ make
RUN curl -sL https://raw.githubusercontent.com/nodesource/distributions/master/rpm/setup_16.x| bash -  
RUN dnf install nodejs -y

WORKDIR /opt/MagicMirror

RUN su tecnico

RUN git clone https://github.com/MichMich/MagicMirror.git .

RUN mkdir default_modules && mkdir default_config

RUN cp -R modules /opt/MagicMirror/default_modules
RUN cp -R config /opt/MagicMirror/default_config

RUN mv config/config.js.sample config/config.js

RUN npm install --silent

EXPOSE 8080

RUN dnf clean all && rm -rf /var/cache/yum

COPY entry.sh ./
RUN chmod +x ./entry.sh
ENTRYPOINT ["./entry.sh"]
CMD node serveronly