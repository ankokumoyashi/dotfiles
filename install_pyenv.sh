yum install -y git gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel libuuid-devel xz-devel libffi-devel 
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /etc/bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /etc/bashrc
echo 'eval "$(pyenv init --path)"' >> /etc/bashrc
