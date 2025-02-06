# Big Data for Image and Video Signals (BDIVS)

Laboratory sessions for BDIVS subject, from the Master of Science in Signal Therory and Communications (MUTSC) of the Universidad Politécnica de Madrid (UPM).

## Instructions

If you don't have the Docker image of the laboratory session you wish to run, create it with the following command:

```bash
docker build -t bdivs_lab1 ./lab<n>/Dockerfile
```

where `n` is the number of the laboratory session. After that, run the bash scripts as follows:

```bash
./lab<n>/bdivs_lab<n>
```

Then, open this URL in your browser: `localhost:8888` and type the token/password `bdivs` to access the Jupyter Notebooks.
