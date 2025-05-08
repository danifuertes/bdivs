FROM jupyter/base-notebook:latest

# Switch to root user to install packages
USER root

# Create workdir
WORKDIR /home/jovyan/work

# Install git (for CLIP in requirements)
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install requirements
COPY ./requirements.txt ./requirements.txt
RUN python3 -m pip install pip==24.0 setuptools==69.2.0 wheel==0.43.0
RUN python3 -m pip install -r requirements.txt
RUN rm ./requirements.txt

# Copy data as root
COPY ./data/*.ipynb .
COPY ./data/CroppedYale ./CroppedYale/
COPY ./data/DICTOL_python ./DICTOL_python/
COPY ./data/*.pkl .

# Add x permission to directories, and w to notebooks
RUN chmod o-w *.ipynb
RUN chmod -R o+x CroppedYale
RUN chmod -R o+x DICTOL_python

# Switch back to default jupyter user (jovyan)
USER jovyan
