build:
	docker build -t remote_control_dedicated_server:local_build .

run:
	docker run -it --rm -p 4678:4678 --name remote_control_dedicated_server_container remote_control_dedicated_server:local_build

stop:
	docker stop remote_control_dedicated_server_container

kill:
	docker kill remote_control_dedicated_server_container
