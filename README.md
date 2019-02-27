# IRFB BR

### Descrição

Este repositório é referente ao container para execução do software IRFB da RFB (em Docker). Para facilitar a utilização, foi feito um `docker-compose.yml` com as variáveis de ambiente que podem ser alteradas de acordo com a necessidade do usuário.

A fim de evitar a criação de várias imagens que acompanhem as versões lançadas do software, o arquivo `startup.sh` executado pelo `CMD` do `Dockerfile` também faz o download/execução de outras versões do IRFB.

### Environments

As variáveis de ambientes declaradas a seguir são referentes ao ano/zip que serão utilizados no container. Para esta primeira versão da imagem `leandro2r/irfb_br` os valores default foram 2019 e IRPF2019-1.0.zip.

```
- ANO=2019
- IRPF_ZIP=IRPF2019-1.0.zip
``` 

### Command

```shell
$ docker-compose up -d
```

### Docker repository

O IRFB BR possui um [repositório docker hub](https://hub.docker.com/r/leandro2r/irfb_br). 

