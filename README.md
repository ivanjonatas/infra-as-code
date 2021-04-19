# Iac

## Objetivo do projeto

Esse projeto tem a intenção de demostra como subir uma instancia com a stack elk ja instalada usando o conceito de Infrastructure as Code.

## Tecnologias usadas

- AWS;
- Terraform;
- Packer;
- Ansible;
- Stack ELK;
- Metricbeats.


## Executando o projeto passo a passo

1 - Criando uma _ami_ com a stack elk e o metricbeat instalada;

- Entre na pasta _ami_ e execute o seguinte comando:
```shell
packer validate packer/
packer build packer/
```

Esse comando ira criar a AMI na AWS personalizada baseado nas configurações descrita dentro da pasta _packer_.

Executando esse comando o packer fara o seguinte processo:
- Criara Security Group com a porta 22 ;
- Criara uma instancia;
- Ira acessa a instancia e instalar todas as configurações;
- Desligara a instancia;
- Criara uma snapshot do disco da instancia;
- Criara a imagem com a snapshot;
- Após a imagem criada ira deleta o que foi criado.

2 - Subindo uma instancia com AMI criada.

Após o processo do packer ser finalizado sera possivel encontra no log o id da _ami_ criada. 

É necessario pega esse nome e coloca no paramentro ```inst_ami ``` dentro do arquivo ```terrafile.tf```.

```
inst_ami = "id_da_ami_criada"
```
- Depois de coloca o id, na pasta onde se encontra o ```terrafile.tf``` execute o seguinte comando para criar uma nova instancia:

```shell
terraform init
terraform plan
terraform apply
```



Com esse comando o terraform ira criar uma nova instancia baseado na AMI que o packer criou.

Essa instancia subira com a stack ELK e com monitoria para os recursos da maquina, cpu, memoria, processos e etc.