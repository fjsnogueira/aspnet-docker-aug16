BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker rmi appdev
docker build -t appdev $BASEDIR