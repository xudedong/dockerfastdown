# Download k8s binaries
FROM alpine:3.9
MAINTAINER xudedong
ENV K8S_VER=v1.17.3

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl

RUN wget https://github.com/kubernetes/minikube/releases/download/v1.7.3/minikube-linux-amd64

CMD ["sleep", "360000000"]
