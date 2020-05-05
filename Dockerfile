# Pull in the layer of the base image: alpine:3.10.3
FROM alpine:3.10.3

# Copy binary demo to the folder `/bin/`
COPY ms_demo /bin/ms_demo

# Run the service demo when a container is launched
CMD ["/bin/ms_demo"]
