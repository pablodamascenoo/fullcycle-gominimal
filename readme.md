# Desafio docker Go

## Introdução

Esse desafio consiste em criar uma imagem go que retorna "Full Cycle Rocks!!" quando executada sendo obrigatório que a imagem tenha menos de 2Mb.

## Como executar

Para executar esse projeto, existem duas opções:

### Imagem do dockerhub:

A primeira opção é puxar a imagem do Dockerhub com o comando:

```console
docker run pablodamascenoo/gominimal
```

### Clonando repositório do github

A segunda opção é clonar este repositório do Github e executar os seguintes comandos no diretório do projeto:

```console
docker build -t pablodamascenoo/gominimal .

docker run pablodamascenoo/gominimal
```