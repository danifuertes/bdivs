#!/bin/bash
docker run -it --rm --gpus all --runtime nvidia -p 8888:8888 -e JUPYTER_TOKEN=bdivs --name bdivs_lab4_container cdagti/bdivs_lab4
