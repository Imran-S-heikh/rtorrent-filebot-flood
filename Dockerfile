FROM ubuntu:latest

ENV USER_NAME=rtf
ENV GROUP_NAME=rtf
ENV USER_ID=1000
ENV GROUP_ID=1000

RUN mkdir /config /rtorrent
COPY ./config /tmp/config
COPY ./scripts /scripts
RUN groupadd -g $GROUP_ID $GROUP_NAME
RUN useradd -g $GROUP_NAME -s /bin/bash -o -u 1000 $USER_NAME
# RUN adduser --disabled-password --gecos '' newuser
# RUN groupadd --gid 1000 node \
#     && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# RUN chown -R $USER_NAME:root /rtorrent /tmp/config /tmp/init.sh
# RUN chown -R $USER_NAME:root /config
# RUN echo hello
# RUN groups
RUN apt-get update
RUN apt-get install rtorrent curl -y
# RUN curl https://get.filebot.net/filebot/FileBot_4.9.4/FileBot_4.9.4_amd64.deb --output /tmp/filebot.deb
COPY ./files/filebot.deb /tmp/filebot.deb
RUN apt-get install /tmp/filebot.deb

# USER ${user_name}
# RUN users

# VOLUME [ "/config","/rtorrent" ]
# RUN echo ${user_name} $USER_ID
RUN chmod -R +x /scripts
ENTRYPOINT /scripts/init.sh
