FROM jupyter/base-notebook

WORKDIR /home/jovyan/work

COPY ./requirements.txt ./requirements.txt

COPY ./scripts .

RUN python3 -m pip install --upgrade pip setuptools wheel

RUN python3 -m pip install -r requirements.txt

RUN rm -f ./requirements.txt
