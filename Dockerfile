FROM rdeleo/centos7-php7.4-apache-dev:7.4.8
MAINTAINER xiaoming
WORKDIR /var/www/html
RUN yum install -y epel-release
RUN yum -y install php-intl
RUN yum -y install php-soap
Run yum -y install php-bcmath
RUN adduser magento
RUN usermod --password magento magento
RUN usermod -a -G apache magento
RUN mkdir /home/magento/.composer
RUN chown -R  magento:magento  /home/magento/.composer
RUN chown magento:apache /var/www/html
COPY ./auth.json /home/magento/.composer/auth.json
COPY ./auth.json /root/.composer/auth.json













                                                                 
