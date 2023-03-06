

## Instructions

Link to hub
https://hub.docker.com/r/23232323232323232323/devopswithdocker2023


### Commands

pull image:
```
docker pull 23232323232323232323/devopswithdocker2023
```

build image:
````
docker build . -t 23232323232323232323/devopswithdocker2023
````

run image:
````
docker run 23232323232323232323/devopswithdocker2023
````

Console print should be:

````
Docker Hub hello vol. 1
Docker Hub hello vol. 2
Docker Hub hello vol. 3
Docker Hub hello vol. 4
Docker Hub hello vol. 5
````

The app runs a script `timescript.sh` which consists of:

```shell
#!/bin/bash
for i in {1..5}
do
   echo "Docker Hub hello vol. $i"
done
```



