# stop all docker images
docker rm -f $(docker ps -a -q)

# remove the images if they exist
docker rmi appdev
docker rmi appprod
docker rmi lb-ng

# build them
(cd docker/dev && ./build.sh)
(cd docker/prod && ./build.sh)
(cd docker/nginx && ./build.sh)