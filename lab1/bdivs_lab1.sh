#!/bin/bash
# Open "localhost:8888" in browser and enter the token "bdivs" to access the Jupyter Notebook
docker run --rm --gpus all --runtime nvidia -p 8888:8888 -e JUPYTER_TOKEN=bdivs --name bdivs_lab1_container bdivs_lab1
