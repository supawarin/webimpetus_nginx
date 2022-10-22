docker build -t webimpetus-server .  
docker tag webimpetus-server 127.0.0.1:5100/webimpetus-server
docker push 127.0.0.1:5100/webimpetus-server

docker build -t workstation-server -f devops/kube/Dockerfile .
docker tag workstation-server 127.0.0.1:5100/workstation-server
docker push 127.0.0.1:5100/workstation-server
# chmod -R 777 ./scrip.sh
#./scrip.sh