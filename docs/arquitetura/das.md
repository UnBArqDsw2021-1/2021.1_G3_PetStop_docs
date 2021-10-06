# Documento de Arquitetura de Software

<!--
    Diagrama de Classes, Sequencia, Pacotes, Componentes, Colab, Atividades, Visão de Casos de Uso, Dados, Contexto

    Não fizemos: Context, Casos de Uso
    Fizemos: Componentes, processos, dados
-->

## 1. Introdução

Padrões (ou estilos) de arquitetura são *templates* que visam solucionar problemas arquiteturais recorrentes. Cada padrão se divide em subconjuntos pré-definidos, os quais especificam as regras e diretrizes para organizar suas relações.

Um dos padrões tipicamente usados em aplicações web é o MVC (Model-View-Controller). Este padrão é normalmente aplicado quando existem várias maneiras de interação entre usuário e dados da aplicação.  


## 2. Padrão Arquitetural - MVC

O padrão MVC tem como principal característica a estruturação do sistema em três camadas lógicas, as quais interagem entre si.

- **Modelo** → contém a funcionalidade principal e os dados;
- **View** → exibe a informação aos usuários;
- **Controller** → gerencia a entrada do usuário, deixando o modelo transparente. 

Uma das vantagens do MVC é a possibilidade de alteração de dados de maneira independente de sua representação. Além disso, ele permite que o mesmo dado seja mostrado múltiplas vezes e de maneiras distintas, ou seja, uma model pode possuir mais de uma view. 

Dadas as vantagens desse modelo arquitetural somado a preferência da equipe, o MVC foi escolhido para ser o padrão que rege este projeto. 



<!-- MVC, exemplo model view e controller -->
<!-- Extra Middleware Pipeline -->

## 3. Representação Arquitetural

<!-- Diagrama de Contexto, texnologias -->

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
