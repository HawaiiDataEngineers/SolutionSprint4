## SolutionSprint4
    
<h1 align="center"><SolutionSprint4></h1>

<p align="center"><project-description></p>

## Links

- [Imagem Docker](https://hub.docker.com/repository/docker/cristinaabrantes/fiap_challege_7)

## Screenshots

![Home Page](/screenshots/1.png "Home Page")

![](![image](https://user-images.githubusercontent.com/97312034/160935098-851552c2-0d9e-40ea-a98c-e83197ac0d8a.png))

![](![image](https://user-images.githubusercontent.com/97312034/160935123-f43f8392-ec8b-402d-a4c7-6afc6fe23059.png))

## Criação e envio de imagem Docker

### Criação da Imagem do Docker:
> "docker build . -f Dockerfile.dockerfile -t fiap_challege_7"`

### Listar imagens criadas
> "docker image ls"

### Listar imagens criadas
> "docker login"
> "docker tag fiap_challege_7 cristinaabrantes/fiap_challege_7:1.0.0"

### Enviar imagem para o https://hub.docker.com/
> "docker push cristinaabrantes/fiap_challege_7:1.0.0"

## Azure Kubernetes
> "az login"

## Azure Kubernetes

### Subir um pod e disponibilizar o endpoint para consulta via Postman
 
> "az login"
> "az account set --subscription 1e496a65-f1dc-459e-9fc0-068d9c655XXX"
> "az aks get-credentials --resource-group rg-fiap-challenge-2 --name aks-fiap-challenge-2"
> "kubectl get pods"
> "kubectl create deployment fiap-challenge-2 --image=cristinaabrantes/fiap_challege_sentiment_1:1.0.0"
> "kubectl get pods"
> "kubectl logs fiap-challenge-2-79c6bb8cfc-llgzl"
> "kubectl port-forward fiap-challenge-2-79c6bb8cfc-llgzl 8888:8888"

 
## Ferramentas Utilizadas 
 
- Python
- Docker
- Jupyter Notebook
- Azure VM
- Azure Kubernetes
- Anaconda
- Postman

## Future Updates

- [ ] Reliable Storage

## Author

**Rohit Jain**

- [Profile](https://github.com/rohit19060 "Rohit jain")
- [Email](mailto:rohitjain19060@gmail.com?subject=Hi "Hi!")
- [Website](https://kingtechnologies.in "Welcome")
