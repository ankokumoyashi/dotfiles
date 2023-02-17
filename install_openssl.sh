yum install -y epel-release
yum install -y openssl11 openssl11-devel

echo 'export CFLAGS=$(pkg-config --cflags openssl11)' >> /etc/bashrc
echo 'export LDFLAGS=$(pkg-config --libs openssl11)' >> /etc/bashrc
