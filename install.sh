sudo yum install docker -y
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose

sudo chmod +x /usr/bin/docker-compose

docker-compose version
sudo systemctl start docker

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

https://github.com/grafana/beyla?tab=readme-ov-file#getting-started

wget https://github.com/grafana/beyla/releases/download/v1.8.6/beyla-linux-amd64-v1.8.6.tar.gz
tar -xzvf beyla-linux-amd64-v1.8.6.tar.gz


export BEYLA_PROMETHEUS_PORT=9090
export BEYLA_OPEN_PORT=80
export OTEL_EXPORTER_OTLP_PROTOCOL="http/protobuf"
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:12345
export BEYLA_OTEL_INSECURE_SKIP_VERIFY=true
sudo -E ./beyla
