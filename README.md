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
./bdivs_lab<n>.sh
```

Then, open this URL in your browser: `localhost:8888` and type the token/password `bdivs` to access the Jupyter Notebooks.

## How to push an image to DockerHub

To push and image to DockerHub, you must first add your username to the name of the image: `<your-username>/<image-name>`. In our case, it will be `cdagti/bdivs_lab<n>`.

In case your image has an incorrect name, you can change it with the `tag` command:

```bash
docker tag <previous-wrong-name> <new-correct-name>
```

After this, you should check the existing images with the command `docker images` and remove the wrong tag with `docker rmi <previous-wrong-name>`.

Now, you should have a docker image called `cdagti/bdivs_lab<n>`, whose version should be `latest`. If so, we will push the image to DockerHub with the next command:

```bash
docker push cdagti/bdivs_lab<n>:latest
```

With this, we have uploaded the latest version of our image. However, if we update the image in the future, we will overwrite the previous version. To ensure we mantain a version of our current image, we can do the following:

```bash
docker tag cdagti/bdivs_lab<n>:latest cdagti/bdivs_lab<n>:v0.1
docker push cdagti/bdivs_lab<n>:v0.1
```

where `v0.1` indicates that it is the first version of our image (you can use any number you prefer). With this, we have uploaded the current verion of our image (`v0.1`) and a tag that points to the latest version of our image (`latest`), which could point, in the future, to other version different from `v0.1`.
