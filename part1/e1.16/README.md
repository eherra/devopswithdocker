## What

I created an app which has frontend with React and backend with Node.js.

### Deployment

First logged in to Heroku Container Registry with command: 

````
heroku container:login
````

Then I created an heroku app with command:

````
heroku create
````

Having a [Dockerfile](https://github.com/eherra/devopswithdocker/blob/main/part1/e1.16/Dockerfile) at the root of the project, I created an image and push it to to Heroku container registry with command:

````
heroku container:push web
````

and then released the image with:

````
heroku container:release web
````

Then it can be opened with:

````
heroku open
````

Link to the app: \
https://failoverflow.herokuapp.com/
