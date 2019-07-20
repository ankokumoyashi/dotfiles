# builds
sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout v0.3.2
make CMAKE_BUILD_TYPE=Release
sudo make install
