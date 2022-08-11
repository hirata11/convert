# convert

# Passo a passo Infra

## Criação da pasta infra para os scripts Terraform
### Para essa aplicação foi escolhida o cluster GKE autopilot para termos uma infraestrutura escalável e um conteiner registry para armazenar as imagens geradas

### Arquivos
Versions.tf : Contem os providers e versões utlizados 
Terraform.tfvars: contem os valores utilizados na variaveis
variables.tf: variáveis utlizadas
Vpc.tf : criação da rede
Gke: criação do cluster tipo autopilot com os rótulos solicitados

#### execução
    -Conectar o terminal ao GCP
    -Executar o terraform init 
    -Executar 0 terraform plan
    -Executar o terraform apply

# Passo a passo aplicação

## Criação do dockerfile para aq aplicação

## Criação dos arquivos yaml para craição da aplicação escálável no cluster de kubernetes
### Arquivos

deployment.yaml: definição do workload convert-app rodando na porta 8080 e com recurso de 250m de cpu
service.yaml: definicção do load balance para expor a aplicação na porta 80
hpa.yma: definição do HorizontalPodAutoscaler com no mínimo 1 replica e máximo de 5 replicas com limite de 80% do cpu definido
kustomization.yaml: Utlizados o kustomization para declarar os objetos da aplicação no kubernetes



# CI/CD

## para a esteira de CI/CD foi utilizado o Github actions

### arquivos
gooogle.yaml: contem todos os passos para a conexão com o GCP, geração do conteiner , publicação no registry, deplou no GKE

URL da aplicação rodando no GKE

http://34.71.178.164/


Se necessário dou acesso a conta do GCP para a realziação do teste

Fernando Hirata
hirata11@hotmail.com
11993628722








