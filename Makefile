all:
	docker build -t smtp .
run:
	docker run --detach=true --env-file=env --name smtp --publish=25:25 smtp
clean:
	docker stop smtp && docker rm smtp
debug:
	docker run -i -t --volumes-from smtp smtp bash
