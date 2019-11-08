# non-root-user-ubuntu
Ubuntu image with non-root user.

## run as root
```console
$ docker run --rm -it reireias/non-root-user-ubuntu
```

## run as ubuntu user (non-root user)
```console
$ docker run --rm -it -u ubuntu reireias/non-root-user-ubuntu

# you can sudo with no password
$ sudo su
```

## installed packages

- apt
  - sudo
  - curl
  - make
  - vim
  - python3
  - python3-pip
  - python3-apt
- pip
  - ansible
