
## RUN

or see [./docker-compose.yml](docker-compose.yml)

open `localohst:8888` without token.

### The default command
```Dockerfile
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]
CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]
```
