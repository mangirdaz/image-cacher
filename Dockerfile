FROM registry.access.redhat.com/rhel7-atomic
MAINTAINER Mangirdas Judeikis <m.j@redhat.com>

RUN microdnf --enablerepo=rhel-7-server-extras-rpms --enablerepo=rhel-server-rhscl-7-rpms --enablerepo=rhel-7-server-rpms \
install skopeo python27 elfutils-libs --nodocs ;\
microdnf clean all

ADD image-cache.sh /usr/local/
RUN chmod 770 /usr/local/image-cache.sh

CMD ["/usr/bin/scl", "enable", "python27", "./usr/local/image-cache.sh"]
