# Big Data for Image and Video Signals (BDIVS)

Laboratory sessions for BDIVS subject, from the Master of Science in Signal Therory and Communications (MUTSC) of the Universidad Politécnica de Madrid (UPM).

## Instructions

If you don't have the Docker image of the laboratory session you wish to run, create it with the following command:

```bash
cd lab<n>
docker build -t cdagti/bdivs_lab<n>:latest .
```

where `n` is the number of the laboratory session. Otherwise, you can download it with this command:

```bash
docker pull cdagti/bdivs_lab<n>
```

After that, run the corresponding bash script as follows:

```bash
.bdivs_lab<n>.sh
```

Then, open this URL in your browser: `localhost:8888` and type the token/password `bdivs` to access the Jupyter Notebooks.
