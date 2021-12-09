
# Docker file for docker-practise demo
# 2021, Rakesh Pandey

# Use scipy-notebook image 
FROM jupyter/scipy-notebook:33add21fab64

# Non interactive command line
ARG DEBIAN_FRONTEND=noninteractive


# Install development tools
RUN apt-get update && \
    apt-get install -y build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install pyspark, black, yapf
RUN mamba install --quiet --yes \
	pyspark==3.1.* \
	black==20.*
