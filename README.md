# Streamripper
Docker image to run streamripper

To build:

		$ docker build -t luis/streamripper .

To run:

		$ docker run --rm -v $(pwd)/audios:/audios luis/streamripper --help


