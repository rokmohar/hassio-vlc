ARG BUILD_FROM=hassioaddons/base:7.0.3
FROM ${BUILD_FROM}

ENV LANG C.UTF-8
ENV HOME=/home/vlc

RUN apk update
RUN apk add --no-cache \
    alsa-plugins-pulse \
    vlc \
    curl

RUN sed -i 's/geteuid/getppid/' /usr/bin/vlc
RUN sed -i '197s#.*#    dir = dir == undefined ? "file:///share" : dir;#' /usr/share/vlc/lua/http/js/controllers.js

# Update Youtube plugin
RUN rm /usr/lib/vlc/lua/playlist/youtube.*

RUN curl https://raw.githubusercontent.com/videolan/vlc/master/share/lua/playlist/youtube.lua \
    -o /usr/lib/vlc/lua/playlist/youtube.lua

RUN curl https://raw.githubusercontent.com/vvasuki/vlc-addons/master/lua-addons/playlist_youtube.luac \
    -o /usr/lib/vlc/lua/playlist/playlist_youtube.luac

COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
