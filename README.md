Various Dockerfiles to build various things.


can set URI to override Repository Location
can set COMMIT to override commit(usually master)

cd whichever
docker build -t MYTAG .

docker run -v MYOUTPUTPATH:/output MYTAG
