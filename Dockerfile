FROM centos:7

RUN yum group install -y "Development Tools" && \
yum install -y rpm-build rpmdevtools vim wget \
redhat-rpm-config asciidoc hmaccalc perl-ExtUtils-Embed \
pesign xmlto audit-libs-devel binutils-devel \
elfutils-devel elfutils-libelf-devel java-devel \
ncurses-devel newt-devel numactl-devel pciutils-devel \
python-devel zlib-devel bc lzma openssl-devel

RUN useradd -m -s /bin/bash kernel-builder

WORKDIR /home/kernel-builder

COPY build-kernel-rpm /app/

RUN chmod +x /app/build-kernel-rpm

ENTRYPOINT /app/build-kernel-rpm

USER kernel-builder

VOLUME ["/in", "/out"]
