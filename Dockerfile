FROM mcr.microsoft.com/azure-cli

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
    && install -o root -g root -m 0755 kustomize /usr/local/bin/kustomize \