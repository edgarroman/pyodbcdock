# pyodbcdock
Docker image that allows python to connect to Microsoft SQL Server (MS SQL)

## Usage Instructions


## Helpful references

* pyODBC
  * http://126kr.com/article/7knui24z2ad

## Image Build Shortcuts

### To build python dock

```sh
docker build -t <image name>[:<version tag>] .
```

### To run a bash docker

```sh
docker run --rm -ti <image name>[:<version tag>] /sbin/my_init -- bash -l
```

### Run a docker container and expose port 9000 in debug mode 
docker run --rm -t -p 8000:80 -i <image name>[:<version tag>] /sbin/my_init -- bash -l
