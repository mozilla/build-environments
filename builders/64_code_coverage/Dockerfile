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
    glibc-static.i686\
    libstdc++-static.i686\
    gtk2-devel.i686\
    libnotify-devel.i686\
    alsa-lib-devel.i686\
    libcurl-devel.i686\
    wireless-tools-devel.i686\
    libX11-devel.i686\
    libXt-devel.i686\
    mesa-libGL-devel.i686\
    gnome-vfs2-devel.i686\
    GConf2-devel.i686\
    pulseaudio-libs-devel.i686\
    gstreamer-devel.i686\
    gstreamer-plugins-base-devel.i686\
    glibc-devel.i686\
    libgcc.i686\
    libstdc++-devel.i686\
    ORBit2-devel.i686\
    atk-devel.i686\
    cairo-devel.i686\
    check-devel.i686\
    dbus-devel.i686\
    dbus-glib-devel.i686\
    fontconfig-devel.i686\
    glib2-devel.i686\
    hal-devel.i686\
    libICE-devel.i686\
    libIDL-devel.i686\
    libSM-devel.i686\
    libXau-devel.i686\
    libXcomposite-devel.i686\
    libXcursor-devel.i686\
    libXdamage-devel.i686\
    libXdmcp-devel.i686\
    libXext-devel.i686\
    libXfixes-devel.i686\
    libXft-devel.i686\
    libXi-devel.i686\
    libXinerama-devel.i686\
    libXrandr-devel.i686\
    libXrender-devel.i686\
    libXxf86vm-devel.i686\
    libdrm-devel.i686\
    libidn-devel.i686\
    libpng-devel.i686\
    libxcb-devel.i686\
    libxml2-devel.i686\
    pango-devel.i686\
    perl-devel.i686\
    pixman-devel.i686\
    zlib-devel.i686\
    freetype-2.3.11-6.el6_1.8.i686\
    freetype-devel-2.3.11-6.el6_1.8.i686\
    freetype-2.3.11-6.el6_1.8.x86_64

# all builds use ccache
RUN mkdir -p /builds/ccache

USER root
ENV SHELL /bin/bash

ENV HG_SHARE_BASE_DIR /builds/hg-shared
ENV LC_ALL C
ENV MOZ_CRASHREPORTER_NO_REPORT 1
ENV MOZ_AUTOMATION 1
ENV PATH /tools/buildbot/bin:/usr/local/bin:/usr/lib64/ccache:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/tools/git/bin:/tools/python27/bin:/tools/python27-mercurial/bin:/home/cltbld/bin
ENV TINDERBOX_OUTPUT 1
ENV TOOLTOOL_CACHE /builds/tooltool_cache
ENV MOZ_OBJDIR obj-firefox
ENV CCACHE_COMPRESS 1
ENV TOOLTOOL_HOME /builds
ENV DISPLAY :2
ENV CCACHE_UMASK 002
ENV MOZBUILD_STATE_PATH /vagrant/docker/builders/64_code_coverage/.mozbuild
ENV CCACHE_DIR /builds/ccache

CMD /bin/bash
