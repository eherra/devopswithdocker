## Task 3.4.

### How to use

> script should work. However, stumbled now with an issue when script is cloning the repo from github -> "git@github.com: Permission denied (publickey)". Not sure if it's related to some ssh key issue when running "git clone" inside a Docker container.

Go to the root folder and run:

````
docker build -t nameofimage .
````

After run command:

````
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock <image-name-you-created> <what-ever-git-repo-you-wanna-clone> <docker-hub-name-you-want> <your-docker-hub-username> <your-docker-hub-password>>
````

Example command:

````
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock nameofimage eherra/expressApp 23232323232323232323/testing 23232323232323232323 passwordHere
````
