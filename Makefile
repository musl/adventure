VERSION := 1
TAG := musl/adventure
NAME := musl-pdp8-adventure

.PHONY: start stop image

all: rm start

image:
	docker build . -t $(TAG):v$(VERSION)
	docker tag $(TAG):v$(VERSION) $(TAG):latest

start: image
	docker run -it --name $(NAME) $(TAG):v$(VERSION) 

remove:
	@docker rm -f $(NAME) &> /dev/null ; true

rm: remove

