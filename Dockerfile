FROM prajend/baserhel

ADD localrhel.repo /etc/yum.repos.d/localrhel.repo

RUN yum -y install httpd

EXPOSE 80

CMD [ "-D", "FOREGROUND" ]
ENTRYPOINT ["/usr/sbin/httpd"]
