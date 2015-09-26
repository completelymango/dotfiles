# Install vim
sudo apt-get install vim

# wget
sudo apt-get install wget

# git
sudo apt-get install git
git config --global user.name "Jerry Belton"
git config --global user.email jerry.belton@gmail.com

# zsh setup
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo apt-get install build-essential cmake 

# i3wm setup
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> i3wm.list
sudo mv i3wm.list /etc/apt/sources.list.d/
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get install i3

echo "exec i3" > ~/.xinitrc

#make the projects directory
mkdir -p ~/projects

# Get Dillon's projects
cd ~/projects
mkdir -p jabari

# Get Kyle's game
cd ~/projects
mkdir -p kaharrs2

# Get my website
cd ~/projects
git clone https://github.com/jcecil/jcecil.github.io.git

# Get latest glfw
cd ~/projects
git clone https://github.com/glfw/glfw.git
cd glfw
git checkout origin/latest
mkdir glfw-build
cd glfw-build
cmake ../
make
sudo make install

# Setup golang
mkdir -p ~/projects/golang
cd ~/projects/golang
mkdir bin pkg src
mkdir -p src/github.com/jcecil
cd src/github.com/jcecil
git clone https://github.com/jcecil/avatar.git
 
# graphics
sudo apt-get install libgl1-mesa-dev xorg-dev libglew-dev libglfw-dev build-essential cmake libsoil-dev libglm-dev beignet-dev ocl-icd-dev ocl-icd-opencl-dev
