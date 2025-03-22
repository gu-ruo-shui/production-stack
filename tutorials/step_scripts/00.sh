git clone https://github.com/vllm-project/production-stack.git
cd production-stack/utils

bash install-kubectl.sh
kubectl version --client

bash install-helm.sh
helm version

sudo usermod -aG docker $USER && newgrp docker
bash install-minikube-cluster.sh

minikube status
kubectl run gpu-test --image=nvidia/cuda:12.2.0-runtime-ubuntu22.04 --restart=Never -- nvidia-smi