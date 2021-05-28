# Docker images based on [Ubuntu][1]

```bash
$ git clone https://github.com/shugaoye/ubuntu.git
$ make
$ ./run_image.sh
```
or

```bash
$ docker pull shugaoye/ubuntu:latest
$ run_image.sh
```

**Description**:

| Items           | Version  |  base image  | Comments                |
|-----------------|----------|--------------|-------------------------|
| ubuntu          | focal    |              | ubuntu:focal base image |
| shugaoye/ubuntu | java     | ubuntu:focal | Ubuntu and Java         |


[1]: https://hub.docker.com/_/ubuntu