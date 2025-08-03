# https://kubernetes.io/docs/tasks/tools/install-kubectl/

#wget -O /tmp/kubectl https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
#chmod +x /tmp/kubectl
#sudo mv /tmp/kubectl /usr/local/bin
#kubectl version --client

(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)

# Install minikube

wget -O /tmp/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x /tmp/minikube
sudo mv /tmp/minikube /usr/local/bin
minikube version
