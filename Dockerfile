# Import a base image
FROM alpine

# Install Python and the required dependencies
RUN apk add --no-cache python3 && pip3 install --upgrade pip setuptools

# Create a work directory to copy the files into (to prevent accidental overrides in the root directory)
WORKDIR /usr/simplepythonwebserver

# Copy the required files from the local folder to the image file space
COPY ./ ./

# Open the shell
RUN sh

# Install the required python modules
RUN pip install httpserver
#RUN pip install socketserver

# Launch the webserver
CMD ["python3", "python-webserver.py"]