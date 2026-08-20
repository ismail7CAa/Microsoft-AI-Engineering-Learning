FROM python:3.8-slim
# Wokring directory
WORKDIR /app
#Copy current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in rquirements.txt 
RUN pip install --no-cache-dir -r requirements.txt
# Port 80 available to the world outside this container
EXPOSE 80 
# Define environment variable 
ENV NAME world 
# Run app.py when the container launches
CMD [python, app.py]
