FROM debian:latest
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install -y curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq lib32gcc1 libstdc++6 libstdc++6:i386
RUN useradd -m steam
USER steam
WORKDIR /home/steam
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

