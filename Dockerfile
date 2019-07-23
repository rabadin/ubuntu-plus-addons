FROM ubuntu:18.04

RUN apt-get -q update                                   	\
	&&  apt-get -y install --no-install-recommends 			\
		git-core apt-transport-https ca-certificates curl   \
		patch less ssh-client								\
	&&  apt-get -y autoremove                               \
	&&  apt-get -y clean                                    \
	&&  rm -rf /var/lib/apt/lists/*
