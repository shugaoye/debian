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

| Items           | Version  |      base image       | Comments                |
|-----------------|----------|-----------------------|-------------------------|
| buildpack-deps  | buster   |                       | debian base image       |
| shugaoye/debian | latest   | buildpack-deps:buster | Debian base image       |


[1]: https://registry.hub.docker.com/_/buildpack-deps/