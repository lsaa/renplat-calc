container = website
image = website
port = 3000

rebuild:
	docker stop $(container)
	docker rm $(container)
	docker build -t $(image) .
	docker run -d -p 3000:$(port) --name $(container) $(image):latest