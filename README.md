# mock
An openmock docker image for dsrhub http and grpc server

## Usage

Run with docker run:
```sh
$ docker run -it -v $(PWD)/demo_templates:/data/templates -p 9999:9999 -p 50051:50051 dsrhub/mock
```

Run with docker-compose:
```yaml
version: "2.4"
services:
  openmock:
    image: dsrhub/mock
    container_name: dsrhub_openmock
    restart: on-failure
    volumes:
      - "./demo_templates:/data/templates"
    ports:
      - "9999:9999"
      - "50051:50051"
```
