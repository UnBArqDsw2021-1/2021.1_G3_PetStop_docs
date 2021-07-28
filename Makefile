build:
	docker build -t mkdocs .
	
run:
	docker run -it -v $$(pwd):/pages -p 8000:8000 mkdocs serve -a 0.0.0.0:8000

rm:
	docker rm $$(docker ps -a -q  --filter ancestor=mkdocs)