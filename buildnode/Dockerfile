# Dockerfile to build Ansible target nodes (i.e where to run the Playbooks)
# TODO use public key instead of user/pass auth
FROM ubuntu:16.04

ARG USER
ARG PASS

ENV NOTVISIBLE "in users profile"
RUN apt-get update && apt-get install -y openssh-server && \
    mkdir /var/run/sshd && \
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    # SSH login fix. Otherwise user is kicked off after login
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
    echo "export VISIBLE=now" >> /etc/profile

RUN echo "${USER}:${PASS}" | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
