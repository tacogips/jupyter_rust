build-image:
	docker build -f Dockerfile -t tacogips/jupyter_rust:latest .

publish:
	docker push tacogips/jupyter_rust:latest
