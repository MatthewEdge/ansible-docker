# Ansible and Docker

A Docker environment for testing Ansible playbooks. Builds a Control node and N build nodes used in the provisioning process.
`Docker` and `Docker Compose` must be installed before running.

Use the `run.sh` script to run all necessary `docker-compose` commands. This will start a `bash` prompt when done.

Run `ansible all -m ping` to ensure the Control node can communicate with the build nodes.
