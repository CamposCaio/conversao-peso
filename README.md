# Desafio - Iniciativa Kubernetes

![KUBERNETES](https://img.shields.io/badge/Kubernetes-326DE6?style=for-the-badge&logo=kubernetes&logoColor=white) ![DOCKER](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

- Visite o site [kubedev.io](https://kubedev.io/)

- Repositório original: [conversao-temperatura](https://github.com/KubeDev/conversao-peso)

### 🏁 Como executar a aplicação?

1. Crie um Cluster com o kind

```sh
kind create cluster --name [CLUSTER_NAME] --config k8s/my-cluster.yml
```

2. Faça o deploy utilizando a imagem da aplicação que já está no registro do docker (Docker Hub)

```sh
kubectl apply -f k8s/deployment.yml
```

3. Acesse a aplicação pelo endereço: [localhost:8080](http://localhost:8080)
