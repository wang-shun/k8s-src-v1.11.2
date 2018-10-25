#!/bin/bash

#通过下面的网址查看依赖镜像的版本号：
set -o errexit
set -o nounset
set -o pipefail


GCR_URL=registry.cn-hangzhou.aliyuncs.com/szss_k8s
ALIYUN_URL=10.0.0.13:5000/k8s_v1.9.1


KUBE_VERSION=v1.9.1
HYPERKUBE_VERSION=v1.9.1_coreos.0
KUBE_PAUSE_VERSION=3.0
ETCD_VERSION=3.1.10
DNS_VERSION=1.14.7

images=(
kube-proxy-amd64:${KUBE_VERSION}
kube-scheduler-amd64:${KUBE_VERSION}
kube-controller-manager-amd64:${KUBE_VERSION}
kube-apiserver-amd64:${KUBE_VERSION}
pause-amd64:${KUBE_PAUSE_VERSION}
etcd-amd64:${ETCD_VERSION}
k8s-dns-sidecar-amd64:${DNS_VERSION}
k8s-dns-kube-dns-amd64:${DNS_VERSION}
k8s-dns-dnsmasq-nanny-amd64:${DNS_VERSION}
)

for imageName in ${images[@]} ; do
  docker pull $GCR_URL/$imageName
  docker tag $GCR_URL/$imageName $ALIYUN_URL/$imageName
  docker push $ALIYUN_URL/$imageName
  docker rmi $GCR_URL/$imageName
  #docker rmi $ALIYUN_URL/$imageName
done

