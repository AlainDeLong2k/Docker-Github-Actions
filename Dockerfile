# Use the official Python image from the Docker hub
FROM python:3.11.5-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD [ "python" , "app.py"]
# CMD sh -c "python app.py && tail -f /dev/null"
# CMD pytest test_app.py
