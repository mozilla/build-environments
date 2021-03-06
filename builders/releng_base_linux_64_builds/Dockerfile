FROM mrrrgn/mozilla-centos6-x86_64
MAINTAINER  Morgan Reece Phillips winter2718@gmail.com

RUN yum update -y
RUN yum install -y \
    autoconf213\
    python\
    mozilla-python27\
    zip\
    mozilla-python27-mercurial\
    git\
    ccache\
    perl-Test-Simple\
    perl-Config-General\
    yasm\
    wget\
    mpfr\
    xorg-x11-font*\
    imake\
    gcc45_0moz3\
    gcc454_0moz1\
    gcc472_0moz1\
    gcc473_0moz1\
    yasm\
    ccache\
    valgrind\
    dbus-x11\
    glibc-static\
    libstdc++-static\
    gtk2-devel\
    libnotify-devel\
    alsa-lib-devel\
    libcurl-devel\
    wireless-tools-devel\
    libX11-devel\
    libXt-devel\
    mesa-libGL-devel\
    gnome-vfs2-devel\
    GConf2-devel\
    gcc45_0moz3\
    gcc454_0moz1\
    gcc472_0moz1\
    gcc473_0moz1\
    yasm\
    ccache\
    pulseaudio-libs-devel\
    gstreamer-devel\
    gstreamer-plugins-base-devel\
    freetype-2.3.11-6.el6_1.8.x86_64\
    freetype-devel-2.3.11-6.el6_1.8.x86_64

# all builds use ccache
RUN mkdir -p /builds/ccache

USER root
ENV SHELL /bin/bash

ENV HG_SHARE_BASE_DIR /builds/hg-shared
ENV LC_ALL C
ENV CCACHE_COMPRESS 1
ENV SYMBOL_SERVER_HOST %(symbol_server_host)s
ENV CCACHE_DIR /builds/ccache
ENV POST_SYMBOL_UPLOAD_CMD /usr/local/bin/post-symbol-upload.py
ENV MOZ_AUTOMATION 1
ENV SYMBOL_SERVER_SSH_KEY /home/mock_mozilla/.ssh/ffxbld_rsa
ENV MOZBUILD_STATE_PATH /vagrant/build-environments/builders/releng_base_linux_64_builds/.mozbuild
ENV LD_LIBRARY_PATH /tools/gcc-4.3.3/installed/lib64
ENV PATH /tools/buildbot/bin:/usr/local/bin:/usr/lib64/ccache:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/tools/git/bin:/tools/python27/bin:/tools/python27-mercurial/bin:/home/cltbld/bin
ENV TINDERBOX_OUTPUT 1
ENV TOOLTOOL_CACHE /builds/tooltool_cache
ENV SYMBOL_SERVER_PATH /mnt/netapp/breakpad/symbols_ffx/
ENV MOZ_OBJDIR obj-firefox
ENV MOZ_CRASHREPORTER_NO_REPORT 1
ENV SYMBOL_SERVER_USER ffxbld
ENV TOOLTOOL_HOME /builds
ENV DISPLAY :2
ENV CCACHE_UMASK 002

CMD /bin/bash
