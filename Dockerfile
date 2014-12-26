FROM fedora
RUN yum -y upgrade
RUN yum -y install rpm-build 
RUN yum -y install rpmdevtools
RUN yum -y install rpmlint
RUN rpmdev-setuptree
ADD start_script.sh /root/start_script.sh
RUN chmod u+x /root/start_script.sh

CMD /root/start_script.sh

