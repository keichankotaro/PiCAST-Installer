cd ~
echo "install git and npm."
sudo apt -y install git npm
echo "ok"
curl -OL http://raw.github.com/lanceseidman/PiCAST/master/setup.sh
sudo chmod +x setup.sh
./setup.sh
sudo cp -R /root/PiCAST ~/
sudo chown -R pi:pi /home/pi/PiCAST
sudo npm install -g express
export NODE_PATH=/usr/local/lib/node_modules
cd /home/pi/PiCAST
./picast_stop.sh
./picast_start.sh
echo "Done!"
