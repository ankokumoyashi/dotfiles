# builds
sudo apt-get install ninja-build libtool autoconf automake pkg-config unzip patch gettext
sudo apt-get install build-essential
# python3.10
pip3 install cmake --upgrade
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout v0.8.3
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ../
mkdir ~/.config
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim
cp ./dein.toml ~/.config/nvim
cp ./dein_lazy.toml ~/.config/nvim
