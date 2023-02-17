FROM centos:centos7

# Import the Centos-7 RPM GPG key to prevent warnings
RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7

# system update
RUN yum -y update && yum clean all

# set locale
RUN yum reinstall -y glibc-common && yum clean all
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Japan /etc/localtime

# ===============================================================================================================
# BASE packages
# ===============================================================================================================
RUN yum --enablerepo=extras clean metadata
RUN yum install -y zlib zlib-devel make gcc gcc-c++ openssl openssl-devel readline-devel pcre pcre-devel
RUN yum install -y openssh openssh-server
RUN yum install -y net-tools wget sudo
RUN yum install -y tar zip unzip bzip2 which tree
RUN yum install -y git

# ===============================================================================================================
# install pyenv + python + neovim
# ===============================================================================================================
RUN git clone https://github.com/ankokumoyashi/dotfiles.git
WORK /root/dotfiles
# install pyenv + openssl(required python3.10) + python
RUN bash -x install_pyenv.sh && bash -x install_openssl.sh && pyenv install 3.11.2 && pyenv global 3.11.2
# install nvim
RUN bash -x latest-nvim.sh

# ===============================================================================================================
# install docker-cli for dood
# ===============================================================================================================
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum install -y docker-ce-cli
