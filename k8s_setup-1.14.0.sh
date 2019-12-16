#!/bin/bash

systemctl disable firewalld
systemctl stop firewalld
setenforce 0
swapoff -a
IPADDR=`ifconfig ens33 | grep broadcast | awk '{print $2}'`
echo "$IPADDR $HOSTNAME" >> /etc/hosts

cat > /etc/sysctl.d/k8s.conf << EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system

wget https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo -O/etc/yum.repos.d/docker-ce.repo
yum -y install docker-ce-18.06.1.ce-3.el7
systemctl enable docker && systemctl start docker

cat > /etc/yum.repos.d/kubernetes.repo << EOF
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=0
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg
https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
EOF

yum -y install kubelet-1.14.0 kubeadm-1.14.0 kubectl-1.14.0 kubernetes-cni-1.14.0
systemctl enable kubelet && systemctl start kubelet


kubeadm init \
--apiserver-advertise-address=0.0.0.0 \
--image-repository registry.aliyuncs.com/google_containers \
--kubernetes-version v1.14.1 \
--service-cidr=10.1.0.0/16 \
--pod-network-cidr=10.244.0.0/16

