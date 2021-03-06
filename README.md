## SolutionSprint4
    

<p>Na 4ª fase Applying Analytics Arquitecture – Enterprise Analytics, Estatística e Mineração de Dados, In memory Database e Creative Thinking – vamos construir um ambiente analítico. 

Para isso, nosso consultor Thiago Nascimento Nogueira nos traz um cenário.

Observando o grande aumento pela demanda de soluções em inteligência artificial, seu grupo resolveu montar uma startup para desenvolvimento de projetos na área.

Após uma extensa pesquisa de mercado, notaram que um nicho muito interessante pode ser a atuação na indústria de varejo, mais especificamente com o desenvolvimento de um produto para análise de sentimentos de avaliações dos clientes. Além disso, após alguns estudos de custos e escalabilidade, ficou definido que as soluções apresentadas pela empresa deverão utilizar a estrutura de cloud computing.

Após algumas reuniões e apresentações, a rede de varejo OMNIline demonstrou grande interesse na contratação da sua empresa para a entrega de um MVP (Minimum Viable Product). Para isso, sua empresa deverá disponibilizar um serviço na internet que permita fazer a análise de sentimentos de avaliações dos clientes.

Atualmente, sua equipe de cientistas de dados já construiu uma versão inicial do modelo rodando em suas máquinas locais. Nosso objetivo será disponibilizar este modelo na cloud para consultas num ambiente que permita o treinamento e publicação de novos modelos na cloud, de maneira centralizada. Posteriormente, a solução será industrializada com a utilização de containers em conjunto com soluções gerenciadas de kubernetes da cloud, como o Azure AKS.></p>

## Links

- [Imagem Docker](https://hub.docker.com/repository/docker/cristinaabrantes/fiap_challege_7)

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

### Login na AZ e na subscrição do Kubernetes criado
> "az login"
> "az account set --subscription 1e496a65-f1dc-459e-9fc0-068d9c655XXX"
> "az aks get-credentials --resource-group rg-fiap-challenge-4 --name aks-fiap-challenge-4"

### Login na AZ e na subscrição do Kubernetes criado
> "kubectl get pods"

### Login na AZ e na subscrição do Kubernetes criado
> "kubectl create deployment fiap-challenge-4 --image=cristinaabrantes/fiap_challege_sentiment_7:1.0.0"

### Verificar status do pods
> "kubectl get pods"

### Verificar log da execução do pods
> "kubectl logs fiap-challenge-4-79c6bb8cfc-llgzl"

### Definição da porta do Endpoint
> "kubectl port-forward fiap-challenge-4-79c6bb8cfc-llgzl 8888:8888"

 
## Ferramentas Utilizadas 
 
- Python
- Docker
- Jupyter Notebook
- Azure VM
- Azure Kubernetes
- Anaconda
- Postman
