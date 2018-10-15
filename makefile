all: push

TAG = 0.1
PREFIX = registry.hundsun.com/hcs/cpu_alloc

build: cpu_alloc.go
	CGO_ENABLED=0 go build -a ./cpu_alloc.go

container: build
#	docker build -f Dockerfile-scratch -t $(PREFIX):$(TAG) .
	docker build -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

clean:
	rm -f cpu_alloc
