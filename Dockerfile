# base image
FROM ubuntu:latest

#install pythin and pip
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

#install python modules needed by python app
COPY requirements.txt /usr/src/app/
RUN ip install --no-cache-dir -r /usr/src/app/requirements.txt



#copy files required for the app to run
COPY run.py /usr/src/app/

# declare the port number the container should expose
EXPOSE 6000


# Run the application
CMD ["python", "/usr/src/app/run.py"]

