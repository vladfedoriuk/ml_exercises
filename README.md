the solutions can be found in vladyslav_fedoriuk.ipynb file.


- In order to run with virtual environment, execute the following commands:

1. Install python 3.9.1:
    `pyenv install 3.9.1`
2. Create a virtual environment:
    `pyenv virtualenv 3.9.1 ml_exercises`
3. Activate it
    `pyenv local ml_exercises`
4. Install required packages:
    `pip install -r requirements.txt`

- In order to run a docker container:

1. Build the image:
    `docker build --tag ml-exercises .`
2. To see the list of present images:
    `docker images`
3. To create a container:
    `docker run --name ml-exercises -it -p 8888:8888 ml-exercises`
4. To see information about all the containers:
    `docker ps -a`
5. To remove a container:
    `docker container rm $(docker ps -aqf "name=ml-exercises")`
6. To remove an image:
    `docker rmi ml-exercises`
7. You can succesfully stop / start /restart the container:
    `docker stop <containerId> && docker start <containerId>`
                            or
                    `docker restart <containerId>`
        containerId = `$(docker ps -aqf "name=ml-exercises")`
