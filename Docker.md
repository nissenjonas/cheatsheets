# Docker cheatsheet

## Basic flow	

	docker build / pull 
	docker run [image name]	
	docker commit	
	docker push
	docker attach	
	docker stop [container name]
	docker start [container name]

## Commands
* `build` - build and image
* `attach` - attach to a container
* `commit` - save changes to a container (creates a new image)
* `run` - starts a container from an image
* `stop` - stops a container
* `start`- restarts a stopped container
* `rm` - removes a container 
* `logs` - outputs STDOUT from a container
* `ps` - outputs current containers from the Docker daemon
* `version` - outputs the installed version of docker
* `port` - outputs the port mapping of a specified container
* `images` - lists all images available locally
* `pull` - downloads a specified image
* `push` - pushes an image to the hub
* `rmi` - remove an image from the host
	

### Run
	# Start a container from an image
	$ docker run [options] [image name]:[image tag] [command]

	# Standard "Hello World" example
	$ docker run ubuntu:14.04 echo 'hello world'
	$ hello world

#### Run Options

* *-t* enables a terminal from inside the container
* *-i* connects to STDIN of the container
* *-d* runs the container as a daemon.
* *-p* maps specific ports between the container and the host
* *-P* maps container port 5000 to a high port number on the host
 

#### Examples
	# Starts a container and connects to the terminal
	$ docker run -t -i ubuntu:14:04 bash 
	root@[containerId]:/#

	# Starts a container as a daemon and starts the bash with a endless loop echoing 'hello world' 
	$ docker run -d ubuntu:14.04 bash -c "while true; do echo 'hello world'; sleep 1; done" 
	

### Commit
Saves changes made in a container to a new image.

#### Commit options
* *-m* - commit message/comment
* *-a* - specifies an author of the commit

#### Examples
	docker commit -m [comment] -a [author] [containerId] [imageName]
	docker commit -m "Installed Nginx" -a "nissen" 0b2616b0e5a8 nissen/helloWorldApp

### Logs
Connects to a container and outputs the STDOUT.

### Logs options
* *-f* - keeps the connection to STDOUT open and keeps displaying output 

### Example
	docker logs [container name]

### Build
Builds an image.

#### Options
* *-t* - 

### Examples
	
	docker build -t nissen/myapp:v1 . 

## Docker file
The docker file describes how to build an image.

### Docker file instructions
* FROM - base image
* Maintainer - contact info
* RUN - Execute a command

### Example
	# Basic Docker file example
	FROM Ubuntu:14.04
	MAINTAINER John Doe <jdoe@example.com>
	RUN apt-get install nginx 	# Install Nginx
	 
