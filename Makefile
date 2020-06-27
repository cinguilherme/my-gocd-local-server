
super-server:
	docker run \
  -p8153:8153 -p8154:8154 \
  --name server \
  gocd/gocd-server:v20.5.0

new-agent:
	docker run -d \
	-e GO_SERVER_URL=http://172.17.0.2:8153/go \
    gocd/gocd-agent-alpine-3.11:v20.5.0