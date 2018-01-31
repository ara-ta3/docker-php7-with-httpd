FROM centos:centos6
RUN yum install -y epel-release
RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum update -y
RUN yum install -y mod_ssl tree sendmail sendmail-cf vim mysql nc
RUN yum install -y --enablerepo=remi,remi-php71 php php-common php-mysql php-xml php-simplexml httpd php-pecl-xdebug
RUN service httpd stop
RUN curl https://raw.githubusercontent.com/Eficode/wait-for/master/wait-for > /opt/wait-for
RUN chmod +x /opt/wait-for