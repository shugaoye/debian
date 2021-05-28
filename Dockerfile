# .NET SDK and Mono image
# Please refer to README.md for more information.

FROM node:16

LABEL maintainer="shugaoye@yahoo.com"

RUN apt-get update && \
	apt-get install -y sudo && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN echo 'root:root' | chpasswd

COPY utils/bash.bashrc /root/bash.bashrc
RUN chmod 755 /root /root/bash.bashrc
COPY utils/docker_entrypoint.sh /root/docker_entrypoint.sh
ENTRYPOINT ["/root/docker_entrypoint.sh"]
