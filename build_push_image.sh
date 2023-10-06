docker build -t item-app:v1 .
docker images
docker tag item-app:v1 richo3673/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u richo3673 --password-stdin
docker push richo3673/item-app:v1