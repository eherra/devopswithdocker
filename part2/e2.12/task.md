### Created local development mode to my project

Changes (a commit) can be found [here.](https://github.com/eherra/failOverflow/commit/04bac74650b7b80931f253bd45446f58e9dfd606)

I created Nginx reverse proxy for the development mode of the app, and docker-compose.dev.yml. When running the docker-compose.dev file, it will start frontend and backend containers and communication between them is handled with Nginx reverse proxy container.

If any changes is done to the code locally, they will be updated immediately to the containers.