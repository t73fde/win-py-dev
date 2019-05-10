FROM fedora:29

RUN set -ex \
 && echo "Start - $(date  +%Y%m%dZ%H%M%S)" \
 && dnf -y install dnf-plugins-core \
 && dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo \
 && dnf -y install \
        docker-ce \
        findutils \
        git \
        sudo \
        which \
        pipenv \
 && rm -f /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python \
 && rm -f /usr/bin/pip && ln -s /usr/bin/pip-3 /usr/bin/pip \
 && rm -rf /var/cache/* /root/.cache /tmp/.[A-Za-z]* /tmp/* \
 && echo "Done - $(date  +%Y%m%dZ%H%M%S)"
