## Task 3.3.

### How to use

Go to the root folder and run:

````
docker build -t nameofimage .
````

After run command:

````
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock <image-name-you-created> <what-ever-git-repo-you-wanna-clone> <your-docker-hub-username>
````

Example command:

````
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock nameofimage git@github.com:eherra/expressApp.git usernameHere
````

Since it's bash script and doesn't have your Docker Hub user signed in, the script will ask your Docker Hub password when signing in to Docker Hub in order to push the image there. Follow the terminal for instructions.