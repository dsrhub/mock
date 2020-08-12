FROM golang:1.14
WORKDIR /go/src/github.com/dsrhub/dsrhub/mocks
ADD . .
ADD ./openmock_templates /data/templates
RUN go build
ENV OPENMOCK_TEMPLATES_DIR=/data/templates
ENV OPENMOCK_GRPC_ENABLED=true
ENV OPENMOCK_GRPC_PORT=50051
EXPOSE 9999
EXPOSE 50051
CMD ./mock
