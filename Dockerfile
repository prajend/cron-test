FROM baserehel72:7.2

ADD localrhel.repo /etc/yum.repos.d/localrhel.repo

RUN yum -y install httpd

EXPOSE 80

CMD [ "-D", "FOREGROUND" ]
ENTRYPOINT ["/usr/sbin/httpd"]
