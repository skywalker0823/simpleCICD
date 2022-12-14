FROM python:3.9

# Add the current directory to the container
ADD . /app

# Set the working directory to the container
WORKDIR /app

# Install the requirements
RUN pip3 install -r requirements.txt

# Run the app
CMD python3 app.py