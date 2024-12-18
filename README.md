<div align="center">

# UFPA Database Exercises

![Main technologies](https://go-skill-icons.vercel.app/api/icons?i=mysql,docker,github,vscode,linux)

Coleção de exercícios feitos durante a disciplina de Bancos de Dados II.

</div>

## Identificação

**Estudante:** Gabriel Santos Cardoso (202111140007)

**Disciplina:** Bancos de dados II

**Curso:** Sistemas de Informação (UFPA)

## Instalação

> Esse projeto foi pensado e desenvolvido para ser executado em ambiente Linux, caso utilizes Windows/MacOS ou qualquer um que seja diferente do ambiente Unix, que pena, é uma boa hora para começar a instalar o Linux ([Configure o Linux Mint para Iniciantes! Tutorial 2024](https://diolinux.com.br/video/linux-mint-para-iniciantes.html))

> Esse projeto pode ser executado com ou sem a instalação prévia das ferramentas, basta se utilizar dos scripts SQL dispostos no diretório `src`.

O projeto se utiliza do SGBD MySQL e como tal tu podes optar por utilizar a instalação local ou através do Docker. Abaixo segue o guia de instalação para ambos os casos.

Além, tenha um editor de código em mãos (recomendação: Visual Studio Code) para uma melhor experiência com os scripts SQL.

### MySQL Local

Para a instalação local basta se utilizar dos comandos padrão do MySQL para interagir com os scripts SQL existentes no diretório `src`. Para ter uma noção de quais comandos utilizar basta dar uma olhada no arquivo `Makefile`.

### Docker (recomendado)

Para utilizar o projeto com o Docker, basta ter instalado no teu computador o Docker e também o Docker Compose.

Para começar basta rodar o seguinte comando para criar as variáveis de ambiente do projeto (podes customizar caso necessário):

```sh
cp .env.example .env
```

Roda o comando abaixo para subir o container:

```sh
make up
```

Em seguida basta utilizar os comandos abaixo para interagir com as funcionalidades presentes no `Makefile`:

```sh
# Comando unicamente para checar qual docker compose está instalado
# Não tem muita utilidade para o projeto
make check-compose

# Comando para subir os containers
make up

# Comando para startar os containers
make start

# Comando para parar os containers
make stop

# Comando para descer os containers e os volumes
make down

# COmando para reiniciar os containers
make restart

# Comando para rebuildar os containers (caso haja problema durante o up)
make rebuild

# Comando para entrar no container do MySQL
make server

# Comando para entrar na CLI do MySQL
make mysql

# Comando para executar os scripts de exercício no MySQL
# e.g.: make evaluate src/exercise-01.sql
make evaluate
```

## Licença

Este projeto está licenciado sob a [MIT Licence](LICENSE).
