SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTDIR="$(dirname "$SCRIPTDIR")"
ROOTDIR="$(dirname "$ROOTDIR")"
PUBLISHDIR=$SCRIPTDIR/publish
APPDIR=$ROOTDIR/webapp/app

rm -rf "$PUBLISHDIR"

(cd "$APPDIR" && dotnet publish --configuration release --output "$PUBLISHDIR")

docker rmi appprod
docker build --tag appprod "$SCRIPTDIR"