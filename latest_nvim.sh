# builds
sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch gettext
# python3.10
pip3 install cmake --upgrade
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout v0.6.1
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ../
mkdir ~/.config
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim
cp ./dein.toml ~/.config/nvim
cp ./dein_lazy.toml ~/.config/nvim
