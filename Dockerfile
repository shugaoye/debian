# .NET SDK and Mono image
# Please refer to README.md for more information.

FROM buildpack-deps:buster

LABEL maintainer="shugaoye@yahoo.com"

RUN echo 'root:root' | chpasswd

COPY utils/bash.bashrc /root/bash.bashrc
RUN chmod 755 /root /root/bash.bashrc
COPY utils/docker_entrypoint.sh /root/docker_entrypoint.sh
ENTRYPOINT ["/root/docker_entrypoint.sh"]
