# tw5container

First build the container:

```docker build .``` from the root folder.

After the image is built, running ```start.sh``` will start TiddlyWiki5 in a container with the volume specified on the command line.

It should run on:

```localhost:8080/```

## Default Behavior

By default the script will default to start on :8080, but if the argument is passed in it will start on a different port.

ex:
```start.sh 8084```

