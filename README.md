# Docker images based on [Debian][1]

```bash
$ git clone https://github.com/shugaoye/debian.git
$ make
$ ./run_image.sh
```
or

```bash
$ docker pull shugaoye/debian:latest
$ run_image.sh
```

**Description**:

| Items           | Version  |  base image    | Comments        |
|-----------------|----------|----------------|-----------------|
| node            | 16       |                | Node.js image   |
| shugaoye/debian | latest   |  node:16       | Node.js image   |


[1]: https://registry.hub.docker.com/_/buildpack-deps/