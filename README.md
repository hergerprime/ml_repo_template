# Data Sciece Dev Kickstarter

## Summary
This is my default go to for developing my models. It spins up a Jupyter server, enables you to connect to it using VSCode. The container pre-loads Keras, Tensor flow and SciKit. The structure of this repo was lovingly ~~stolen~~ borrowed from - https://github.com/davidADSP/Generative_Deep_Learning_2nd_Edition. (This is a great gook on Generative Models). 

&nbsp;

## Using This Repository 

### Key Directories and Files

| Directory/File | Description |
| :-- | :-- |
| data | Directory to download your data to. Mounted into the container running Jupyter server |
| docker | Directory that stores the docker file definitions. These are used by Docker compose |
| logs | This is where Jupyter and tensor board output their logs to. Good for debuging and needed for visualizations on tensor board |
| notebooks | Store the notebooks you are working on here. This is mapped into the containter that runs Jupyter server |
| scripts | This is where you can helper scripts. Stuff like downloading from kaggle etc. |


### The .env file

Create a file called `.env` in the root directory, containing the following values (replacing the Kaggle username and API key with the values from the JSON):

```
JUPYTER_PORT=8888
TENSORBOARD_PORT=6006
KAGGLE_USERNAME=<your_kaggle_username>
KAGGLE_KEY=<your_kaggle_key>
```

### To GPU or Not GPU

There are two Docker Compose/Dockerfiles. The Docker compose files will build the containers using the Dockerfiles. The GPU variant "works on my machine" and "should" work on yours, if you are running NVidia. But as always, _caveat emptor_. 


Example 
```shell

# Running the container
docker compose up

# If you have a GPU you would like to use
docker compose -f docker-compose.gpu.yml up

```

Jupyter will be available in your local browser, on the port specified in your env file. You can connect to it via your browser (http://localhost:8888) or from VSCode. 


&nbsp;

## Experimental Stuff

### Codespaces

I have been playing around with running these containers in [CodeSpaces](https://github.com/features/codespaces). Results so far are mixed. Small models work fine. Neural Network models, not so good. 


## Resources

* The structure of this repo was lovingly ~~stolen~~Borrowed from - https://github.com/davidADSP/Generative_Deep_Learning_2nd_Edition
    * This is a GREAT book if you are interested in learning Generative Models



