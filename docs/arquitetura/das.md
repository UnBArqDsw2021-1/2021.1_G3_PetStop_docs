# Documento de Arquitetura de Software

<!--
    Diagrama de Classes, Sequencia, Pacotes, Componentes, Colab, Atividades, Visão de Casos de Uso, Dados, Contexto

    Não fizemos: Context, Casos de Uso
    Fizemos: Componentes, processos, dados
-->

## 1. Introdução

<!-- Finalidade Escopo -->

## 2. Padrão Arquitetural

<!-- MVC, exemplo model view e controller -->
<!-- Extra Middleware Pipeline -->

## 3. Representação Arquitetural

### 3.1 Tecnologias

#### FrontEnd

<p style="text-align: justify; text-indent: 20px;">
   O framework <b>React</b> já era conhecido pela maioria dos integrantes da equipe e também possui grande comunidade ativa, o que permite o acesso rápido a conteúdos e treinamentos para aqueles que não possuiam desenvoltura com a tecnologia.
</p>

#### BackEnd

<p style="text-align: justify; text-indent: 20px;">
    A tecnologia escolhida pelo grupo para o servidor do projeto foi o <b>Node</b>. Utilizado para executar JavaScript fora do navegador, este framework permite a criação de aplicações web em geral e se mostrou interessante para o grupo pelo mesmo motivo que o React e também para que aqueles que não tinham familiaridade com o desenvolvimento Web necessitassem do contato com apenas uma linguagem.
</p>
<p style="text-align: justify; text-indent: 20px;">
    O nosso banco de dados utilizará do <b>Postgres</b>, um sistema de banco de dados Open Source de fácil instalação que possui interfaces simples e intuitivas que facilitam o processo de aprendizado.
</p>

#### Outros

<p style="text-align: justify; text-indent: 20px;">
    O <b>Docker</b> se mostrou indispensável para o desenvolvimento do nosso projeto, já que a uniformização e contêinerização do ambiente de execução da equipe evita problemas que são mitigados por este empacotamento.
</p>

### 3.2 Diagrama de Contexto

<p style="text-align: justify; text-indent: 20px;">O Diagrama de contexto representa de uma forma de mais alto nível a comunicação estabelecida entre as tecnologias, bem como o projeto em um contexto geral.</p>

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags=%7B%7D&highlight=FFFFFFFF&edit=_blank&layers=1&nav=1&title=Diagrama%20de%20Contexto#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D13VTp-aDIl5Z-XHXIlwDf3uXGa_WIyTeu%26export%3Ddownload"></iframe>

## 4. Objetivos Arquiteturais e Restrições

## 5. Visão de Casos de Uso

## 6. Visão Lógica

<!-- Classe, Componentes, Pacotes(?) -->

## 7. Visão de Processo

<!-- Estado -->

## 8. Visão de Implantação

<!-- Devops -->

## 9. Visão de Implementação

<!-- Classes -->

## 10. Visão de Dados

<!-- Exemplos das models etc, DER, DLD -->

## Versionamentos

|    Data    | Versão |      Descrição       |                                               Autor                                               |
| :--------: | :----: | :------------------: | :-----------------------------------------------------------------------------------------------: |
| 05/10/2021 |  0.1   | Criação do Documento | Arthur Sena, Edvan Gomes, Pedro Vítor de Salles Cella, Sara Campos, Victor Samuel, Vinícius Souza |
| 05/10/2021 |  0.2   | Adição das tecnologias usadas | Arthur Sena |
| 05/10/2021 |  0.2.1   | Adição do Diagrama de Contexto | Pedro Vítor de Salles Cella |