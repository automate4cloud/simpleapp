FROM centos
MAINTAINER Sander <mail@sandervanvugt.nl>

# Add repo file
# ADD ./sander.repo /etc/yum.repos.d/

# Install cool software
#
RUN yum --assumeyes update && \
yum --assumeyes install \
nmap iproute && \
bash && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.18.0.0/24"] 
