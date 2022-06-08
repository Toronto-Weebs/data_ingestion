build:
	docker build -t data_ingestion -f Dockerfile .
	
run:
	docker run -it --rm -p 8080:8080 -v $(pwd):/data_ingestion -w /root data_ingestion

update:
	poetry export -f requirements.txt --output requirements.txt
