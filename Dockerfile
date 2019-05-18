FROM 	debian:stable-slim
RUN	dpkg --add-architecture i386
RUN 	apt-get update && 	\
	apt-get install 	\
		sudo		\
		wine		\
		wine32		\
		xterm		\
	 -y && \
	apt-get clean

RUN	useradd user
RUN	mkdir /home/user
RUN	chown user /home/user
USER	user
CMD /bin/bash
