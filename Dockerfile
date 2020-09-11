FROM centos:6

# Install libraries
RUN yum install -y epel-release && \
    yum update -y && \
    yum install -y gtk2{,.i686} unixODBC{,.i686} libxml2{,.i686} libXt.i686 libXtst.i686 libXdmcp.i686 xorg-x11-fonts dejavu-{sans,sans-mono,serif}-fonts 'liberation-*-fonts' xorg-x11-xauth xterm openmotif firefox expect wget && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    ln -sf usr/lib64/libXm.so.4.0.3 /usr/lib64/libXm.so.3 && \
    ldconfig 

# Add setup scripts
ADD files/ /

# Install Quartus
RUN mkdir -p /root/quartus && \
    cd /root/quartus && \
    wget -q http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_tar/Quartus-web-13.0.1.232-linux.tar && \
    tar xvf Quartus-web-13.0.1.232-linux.tar && \
    /root/setup && \
    rm -rf /root/quartus /root/setup \
           /app/quartus/linux64/libccl_curl_drl.so \
           /app/quartus/linux64/libcrypto.so.1.0.0 \
           /app/quartus/linux64/libcurl.so.4 \
           /app/quartus/linux64/libssl.so.1.0.0
# ^        These bundled library files seem to break the setup

CMD ["/usr/local/bin/quartus_wrapper"]