FROM archlinux:latest

ENV ANSIBLE_USER=ansible SUDO_GROUP=sudo DEPLOY_GROUP=deployer

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
    base-devel \
    python3 \
    sudo \
    && set -xe \
    && groupadd -r ${ANSIBLE_USER} \
    && groupadd -r ${DEPLOY_GROUP} \
    && groupadd -r ${SUDO_GROUP} \
    && useradd -m -g ${ANSIBLE_USER} ${ANSIBLE_USER} \
    && usermod -aG ${SUDO_GROUP} ${ANSIBLE_USER} \
    && usermod -aG ${DEPLOY_GROUP} ${ANSIBLE_USER} \
    && sed -i "/^%${SUDO_GROUP}/s/ALL\$/NOPASSWD:ALL/g" /etc/sudoers
