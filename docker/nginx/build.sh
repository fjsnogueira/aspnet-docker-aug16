SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker rmi lb-ng
docker build --tag lb-ng "$SCRIPTDIR"