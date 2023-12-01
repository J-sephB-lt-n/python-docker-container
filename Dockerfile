# Use the official lightweight Python image #
# https://hub.docker.com/_/python #
FROM python:3.11-slim

# Copy local code to the container image #
WORKDIR /python-docker-container
COPY . ./

# Install python dependencies #
RUN pip install --no-cache-dir -r requirements.txt

# Use CMD to run something every time the the container starts up #
# See also "ENTRYPOINT" command # 
CMD bash a_shell_script.sh & python a_python_script.py