 #Using the base image with python 3.9
FROM python:3.9

# Copy local directory to /app in container
COPY . /app/

#Set our working directory as app
WORKDIR /app 

RUN pip install -r requirements.txt

# Expose port and run the application when the container is started
EXPOSE 8080
ENTRYPOINT python flask_api.py 8080

# docker build -t "<app name>" .
# docker run -d -p 8081:8080 ml_app # to make the port externally avaiable for browsers

# POSTMAN post call: localhost:8081/predict

# open bash in a running docker container
# docker exec -ti <containerid> bash
