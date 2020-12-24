apt update
apt install -y net-tools
echo "puppet-agent" > /etc/hostname

wget https://apt.puppet.com/puppet7-release-bionic.deb
sudo dpkg -i puppet7-release-bionic.deb

apt update

apt -y install puppetserver

# systemctl start puppetserver # We're only using the agent...
