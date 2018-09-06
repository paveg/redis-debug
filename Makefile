IMAGE_NAME=redis-debug
.PHONY: build run

build:
	docker build -f ./Dockerfile -t $(IMAGE_NAME):latest .

run:
	docker run -it -p 9876:9876 --cap-add=SYS_PTRACE --security-opt \
		seccomp=unconfined $(IMAGE_NAME):latest
