#Create a ubuntu base image with python 3 installed.
FROM python:3

#Set the working directory
WORKDIR /usr/src/app

#copy all the files to the container
COPY . .

#Install dependencies
RUN apt-get -y update
RUN pip3 install --no-cache-dir -r requirements.txt

#Expose the required port
EXPOSE 5000

#Run the command (./ is execute what is in current directory)
#Runs when container is instantiated using the image being built
#CMD [“flask”, “run”, "--host=0.0.0.0", "--port=5000", "echo", "is this working"]
CMD ["flask", "run", "--host", "0.0.0.0"]