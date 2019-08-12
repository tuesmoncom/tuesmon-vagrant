sudo apt-get -y update
sudo apt-get -y install git bash


rm -rf tuesmon-scripts
git clone https://github.com/tuesmoncom/tuesmon-scripts.git
cd tuesmon-scripts

mkdir -p ~/.setup

cat > ~/.setup/data.sh <<EOF
scheme="http"
hostname="localhost:8000"
EOF

bash setup-server.sh
