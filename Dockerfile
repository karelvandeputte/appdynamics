FROM registry.access.redhat.com/rhel
LABEL maintainer="Karel Vandeputte <karel.vandeputte@hcl.com>"

# RUN yum install coreutils
ADD volvogroup-appdynamics-java-agent-4.3.5.13-1.x86_64.rpm /opt/appdynamics/
RUN yum localinstall -y /opt/appdynamics/volvogroup-appdynamics-java-agent-4.3.5.13-1.x86_64.rpm

CMD ["tail", "-f", "/dev/null"]
