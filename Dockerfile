FROM registry.access.redhat.com/ubi8/ubi

RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && rm -rf /var/cache/yum

RUN mkdir -p /cockroach
COPY workload /cockroach/
RUN chmod +x /cockroach/workload
WORKDIR /cockroach

# Include the directory in the path to make it easier to invoke
# commands via Docker
ENV PATH=/cockroach:$PATH
CMD [ "/cockroach/workload" ]

