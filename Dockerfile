ARG RUST_VER=1.60
ARG JUPYTER_VER=1.60

from rust:${RUST_VER}-slim

RUN apt update && apt install -y \
		jupyter-notebook \
		 g++ \
		cmake && rm -rf /var/lib/apt/lists/*

RUN cargo install evcxr_jupyter && evcxr_jupyter --install && rm -rf /usr/local/cargo/registry

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]
CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser"]
