mkdir -p /home/circleci
chmod 777 -R /home/circleci

useradd -m vagrant
mkdir -p /home/vagrant
touch /home/vagrant/.bashrc
chown -R vagrant /home/vagrant
chmod 777 -R /home/vagrant

mkdir -p /vagrant
cp -a . /vagrant/
chown -R vagrant /vagrant 
chmod 777 -R /vagrant

echo -e vagrant ALL=\(ALL\) NOPASSWD: ALL >> /etc/sudoers
echo -e circleci ALL=\(ALL\) NOPASSWD: ALL >> /etc/sudoers