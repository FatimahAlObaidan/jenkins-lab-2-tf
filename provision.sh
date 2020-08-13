sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
export WEB_HOST=controlplane.fatima.dobc
export API_IP=$(cat /home/ubuntu/index.html)
export WEB_URL=https://$WEB_HOST:80
