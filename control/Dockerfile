FROM williamyeh/ansible:debian9

ARG HOST
ARG NUM_HOSTS
ARG USER
ARG PASS

RUN mkdir -p /etc/ansible && \
    echo "[server_hosts]\n${HOST}_[1:${NUM_HOSTS}]\n\n[server_hosts:vars]\nansible_python_interpreter=/usr/bin/python3\nansible_ssh_user=${USER}\nansible_ssh_pass=${PASS}" > /etc/ansible/hosts

# Disable strict host check for SSH access to targets
COPY ssh/config /root/.ssh/config
