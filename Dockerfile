# base image
FROM circleci/python:2.7


#install python modules needed by python app
COPY requirements.txt /usr/src/app/
RUN pip install --user --no-cache-dir -r /usr/src/app/requirements.txt

RUN python --version

#copy files required for the app to run
COPY . /usr/src/app/

# declare the port number the container should expose
EXPOSE 5000


# Run the application
CMD ["python", "/usr/src/app/run.py"]

