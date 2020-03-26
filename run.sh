docker stop docker-node || true 
docker rm docker-node || true 

docker run \
	-d \
	--name docker-node \
	--mount type=bind,source="$(pwd)/src",target=/var/www/src \
	-p 54321:54321 \
	docker-node;