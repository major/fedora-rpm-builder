FROM quay.io/fedora/fedora:latest
RUN echo "fastestmirror=1" >>/etc/dnf/dnf.conf && \
    echo "max_parallel_downloads=20" >>/etc/dnf/dnf.conf && \
    dnf -qy install git mock rpm-build rpmdevtools && \
    dnf clean all
CMD ["/bin/bash"]