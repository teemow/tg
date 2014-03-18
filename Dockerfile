FROM teemow/build
MAINTAINER Timo Derstappen, teemow@gmail.com

RUN sudo apt-get update && sudo apt-get install -y libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev
ADD . /home/teemow/tg

RUN cd /home/teemow/tg && ./configure
RUN cd /home/teemow/tg && make

WORKDIR /home/teemow/tg
ENTRYPOINT ["./telegram"]
