# create user and add to sudo group
# adduser demo
# gpasswd -a demo sudo



# create ssh key:
#ssh-keygen -t rsa -C "quochoangddt@gmail.com"
# show public key
# cat ~/.ssh/id_rsa.pub

# install font
# sudo add-apt-repository ppa:no1wantdthisname/ppa
# sudo apt-get update
# sudo apt-get upgrade
# sudo apt-get install fontconfig-infinality
# http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
# set style:
# sudo bash /etc/fonts/infinality/infctl.sh setstyle
# install font Source Code Pro
# http -d https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
# unzip/ copy to /usr/share/fonts or ~/.fonts
# sudo cp OTF/*.otf /usr/share/fonts  
# sudo fc-cache -f -v 


curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs


npm install

sudo npm install -g gulp
sudo npm install -g bower


wget https://github.com/cortesi/modd/releases/download/v0.2/modd-0.2-linux64.tgz

tar xvf modd-0.2-linux64.tgz

cd tmp

cd modd-0.2-linux64

sudo mv modd /usr/bin

wget https://github.com/cortesi/devd/releases/download/v0.4/devd-0.4-linux64.tgz
tar xf devd-0.4-linux64.tgz
cd tmp
cd devd-0.4-linux64
sudo mv /usr/bin
sudo mv devd /usr/bin
sudo npm install -g coffee-script


# install nginx 
sudo apt-get update
sudo apt-get install -y nginx