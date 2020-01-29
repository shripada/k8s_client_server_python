eval $(minikube docker-env)

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR/

docker build -f Dockerfile_server -t server:latest --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy .  && \
docker build -f Dockerfile_client -t client:latest --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy . 
