FROM openshift/base-centos7

RUN unalias cp
RUN mkdir /tmp/aim
RUN mkdir /JavaBB
ADD aim/* /tmp/aim/
RUN cp /tmp/aim/aimparms.sample /var/tmp/aimparms
RUN rpm -i /tmp/aim/CARKaim*
RUN cp /tmp/aim/JavaBB/* /JavaBB/
RUN yum install -y python-setuptools
RUN easy_install supervisor
