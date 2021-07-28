## Como adicionar uma página

 * Crie um arquivo markdown na pasta `docs`

 ![Novo arquivo criado](assets/manual/newmd.png)

 * Adicione o arquivo criado no campo `nav` do arquivo `mkdocs.yml`

 ![mkdocs.yml antes de adicionar novo arquivo](assets/manual/ymlbefore.png)
 ![mkdocs.yml depois de adicionar novo arquivo](assets/manual/ymlafter.png)

 

## Como testar o github pages localmente

### Requisitos

[Docker](https://www.docker.com/)

### Intruções

Na primeira utilização, é necessário fazer o build do container, para isso, utilize o comando.
```
make build
```
Após isso basta iniciar o container com o comando.
```
make run
```
Se tudo der certo, será mostrado no seu terminal a porta para acessar localmente