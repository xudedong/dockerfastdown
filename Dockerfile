# Download kubernetes binaries
# @author: xudedong
FROM alpine:3.9
MAINTAINER xudedong@haodf.com
#RUN apk --no-cache add wget

ENV K8S_VER=v1.17.3

RUN wget https://dl.k8s.io/$K8S_VER/kubernetes-server-linux-amd64.tar.gz && \
    tar zxf kubernetes-server-linux-amd64.tar.gz && \
    mkdir -p /k8s && cd kubernetes/server/bin && \
    mv kube-apiserver kube-controller-manager kube-scheduler /k8s && \
    mv kubelet kube-proxy kubectl /k8s && \
    cd / && rm -rf kubernetes*

CMD [ "sleep", "360000000" ]
