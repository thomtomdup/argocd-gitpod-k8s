FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl sudo vim git net-tools lsb-release gnupg

# kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.29.0/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && mv kubectl /usr/local/bin/

# k3s (Kubernetes)
RUN curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--disable=traefik" sh -

# ArgoCD CLI
RUN curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 && \
    chmod +x /usr/local/bin/argocd
