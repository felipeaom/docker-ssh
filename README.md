# Docker Image OpenSSH
### Projeto: Customizar Imagem Docker

Este projeto consiste em criar uma imagem docker baseado na distribuição CentOS7 para deixa-lo acessível via **SSH**.

### Criar imagem
```
# docker build -t centos7-ssh .

# docker image ls | grep "centos7-ssh"
```

### Criar container
```
# docker container run -dP --name servidor centos7-ssh

# docker logs servidor
ssh-keygen: generating new host keys: RSA1 RSA DSA ECDSA ED25519
Server listening on 0.0.0.0 port 22.
Server listening on :: port 22.

# docker port servidor
22/tcp -> 0.0.0.0:32785

# ssh root@localhost -p 32785
```
