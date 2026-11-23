
### JS interpreted

build-js:
	docker build -t ghcr.io/cookiedan42/dot-bear-js -f ./js.Dockerfile ../dov-bear/javascript/
run-js:
	docker run -e PORT=5000 -e INSTANCE_NAME="CUSTOM_NAME" -e INSTANCE_HASH="hashbrown" -p 3000:5000 ghcr.io/cookiedan42/dot-bear-js:latest
publish-js:
	docker push ghcr.io/cookiedan42/dot-bear-js


### golang compiled 

build-golang:
	docker build -t ghcr.io/cookiedan42/dot-bear-golang -f ./go.Dockerfile ../dov-bear/golang/
run-golang:
	docker run -e PORT=5000 -e INSTANCE_NAME="CUSTOM_NAME" -e INSTANCE_HASH="hashbrown" -p 3000:5000 ghcr.io/cookiedan42/dot-bear-golang:latest
publish-golang:
	docker push ghcr.io/cookiedan42/dot-bear-golang
