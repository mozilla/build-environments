FROM centos:6

MAINTAINER Morgan Reece Phillips winter2718@gmail.com

# Setup mozilla repositories
ADD yum.conf /etc/yum.conf

RUN yum -x make update -y
# Prefixing with `linux32` ensures that anything new we get is 32-bit
RUN linux32 yum install -y bash\
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
