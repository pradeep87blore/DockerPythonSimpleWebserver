This repo contains the files used to create the following docker image:
https://cloud.docker.com/repository/docker/pradeep87blore/simplepythonwebserver/

The docker image, when launched, launches a simple web server based on Python. 

The tutorial is at: 
https://programmer.happyhobbyist.gallery/2019/03/docker-image-for-simple-webserver-with.html

29th June,2019: Added code to enable Prometheus monitoring on this web server. With this, launching the webserver creates a monitoring server at port 8000. Hence, if you want to check if the web server is up and running, add the appropriate target in the prometheus.yml to scrape this target and when running the image, ensure that there is also a port mapped to the port 8000 of the docker container. 

Thus, something like the following should be done to expose the Prometheus metrics port:
docker run -p 5000:8080 -p 8100:8000 -it pradeep87blore/simplepythonwebserver
