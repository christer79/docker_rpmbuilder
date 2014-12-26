#/bin/bash
rpmdev-setuptree
chown root:root -R /root/rpmbuild
rpmbuild -ba /root/rpmbuild/SPECS/*.spec
