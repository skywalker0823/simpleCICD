FROM python:3.9

# Add the current directory to the container
ADD . /app

# Set the working directory to the container
WORKDIR /app

# Install the requirements
RUN pip3 install -r requirements.txt

EXPOSE 3000

# Run the app
CMD python3 app.py


# If only the Dockerfile but docker-compose is present in the current directory
# docker build . -t a_flask
# docker run -dp3000:3000  a_flask
# Open port 3000 in the browser