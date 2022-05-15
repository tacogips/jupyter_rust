
![img/jupyter_rust.gif](img/jupyter_rust.gif)

## Usage
### docker run

```bash
docker run --mount src="$(pwd)",target=/notebooks,type=bind -p 8888:8888 tacogips/jupyter_rust:latest
```

open `localohst:8888` without token.

### docker-compose example

```yaml
# docker-compose.yml
version: "3.9"

services:
  jupyter:
    image: tacogips/jupyter_rust:latest
    volumes:
      - ./vol:/notebooks
    ports:
      - 8888:8888
```


## The default command
```Dockerfile
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]
CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]
```

