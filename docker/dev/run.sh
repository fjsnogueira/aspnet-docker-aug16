BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASEDIR="$(dirname "$BASEDIR")"
BASEDIR="$(dirname "$BASEDIR")"

docker run \
    --name development-container \
    -it --rm \
    --volume $BASEDIR/webapp/app:/app \
    -p 85:5000 \
    -t appdev \
    bash