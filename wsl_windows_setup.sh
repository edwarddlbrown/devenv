#Setup .bashr
echo 'set -o vi'>>~/.bashrc
source ~/.bashrc
##Neovim install
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
#python and pip
sudo apt-get install python-dev python-pip python3-dev python3-pip
#get ubuntu version
lsb_release v 
#R install
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
sudo apt-get update
sudo apt-get install r-base r-base-dev

#mount udrive, You will have to do this every restart? 
sudo mount -t drvfs U: /mnt/u
