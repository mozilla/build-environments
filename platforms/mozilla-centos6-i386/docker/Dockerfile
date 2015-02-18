FROM gpmidi/centos-6.1

MAINTAINER Morgan Reece Phillips winter2718@gmail.com

# Setup mozilla repositories
ADD yum.conf /etc/yum.conf

RUN yum update -y
# Prefixing with `linux32` ensures that anything new we get is 32-bit
RUN yum install -y \
    make\
    bash\
    bzip2\
    coreutils\
    cpio\
    diffutils\
    fedora-release\
    findutils\
    gawk\
    gmp\
    libstdc++\
    ppl\
    cpp\
    gcc\
    gcc-c++\
    grep\
    gzip\
    info\
    patch\
    redhat-rpm-config\
    rpm-build\
    sed\
    shadow-utils\
    tar\
    unzip\
    util-linux\
    which\
    xz
