FROM gpmidi/centos-6.1

MAINTAINER Morgan Reece Phillips winter2718@gmail.com

# Setup Mozilla repositories
ADD yum.conf /etc/yum.conf
ADD CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y
RUN yum install -y bash\
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
    make\
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
