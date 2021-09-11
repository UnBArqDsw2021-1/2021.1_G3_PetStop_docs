# Estudo Dirigido - GRAPS
General Responsibilty Assignment Software Patterns (ou principles), também conhecido como GRASPS, são padrões que procuram fornecer diretrizes para construção de aplicações bem estruturadas e que possam ser facilmente adaptáveis diante da necessidade de mudanças. Esses padrões buscam atribuir responsabilidade a classes e objetos em projetos que seguem a POO, tendo como consequência direta das recomendações propostas por estes patterns: um código melhor organizado, de fácil manutenção e ainda, capaz de ser compreendido por diferentes desenvolvedores sem grandes dificuldades.

## Glossário
| Palavra/Conceito | Descrição |
|:----------------:|:---------:|
|     Pattern      |  É um conjunto de recomendações voltadas à resolução de uma necessidade específica e, por vezes, recorrente na área de desenvolvimento. | 
|       POO        |  Programação Orientada à Objetos - Seu objetivo é realizar uma maior abstração de estruturas do mundo real ao manuseio de programas e códigos. |
|       RDD        |  Metáfora que leva ao raciocínio de projetos de software orientados a objetos sob o ponto de vista do conceito de responsabilidade. |


## Sumário

[1. Padrões GRASP e o conceito de responsabilidade](#1-Padrões-GRASP-e-o-conceito-de-responsabilidade)

[2. GRASPS estudados](#2-grasps-estudados)
* [2.1 Criador ou Creator](#21-criador-ou-creator)
* [2.2 Especialista](#22-especialista)
* [2.3 Alta Coesão](#23-alta-coesão)
* [2.4 Baixo Acoplamento](#24-baixo-acoplamento)
* [2.5 Controladora ou Controller](#25-controladora-ou-controller)
* [2.6 Polimorfismo](#26-polimorfismo)
* [2.7 Invenção Pura ou Fabricação Pura](#27-invenção-pura-ou-fabricação-pura)
* [2.8 Indireção](#28-indireção)
* [2.9 Variações Protegidas](#29-variações-protegidas)

## **1. Padrões GRASP e o conceito de responsabilidade**

Se tratando de padrões GRAPS o conceito de responsabilidade deve ser voltado às obrigações que um objeto tem dentro de um contexto específico e suas interações com os demais objetos.

Quando utilizamos uma implementação de soluções focada na POO abordando o conceito de responsabilidade, papel e colaboração estamos fazendo uso RDD (Responsibility Driven Design). Proposta por Rebecca Wirfs-Brock e Brian Wilkerson, ela cita: 

> <i>Pense em objetos como pessoas com responsabilidades que colaboram com outras pessoas para fazer coisas. RDD enxerga projeto OO como uma comunidade de objetos colaborativos e responsáveis</i>.

Basicamente RDD nos diz que há dois tipos de responsábilidade:
- <b>Saber.</b>
- <b>Fazer.</b>

Responsabilidades do tipo <b>Fazer</b> de um objeto inclui:
- Fazer algo por si próprio, tal como criar um objeto ou fazer um cálculo.
- Iniciando ação em outros objetos.
- Controlar e coordenar, atividades em outros objetos.
Responsabilidades do tipo <b>Saber</b> de um objeto inclui:
- Conhecimento sobre encapsulamento de dados privados.
- Conhecimento sobre objetos relacionados.
- Conhecimento sobre coisas que podem ser derivadas e calculadas.



## **2. GRASPS estudados**
### 2.1 Criador ou Creator

### 2.2 Especialista

### 2.3 Alta Coesão
A alta coesão ou High Cohesion é um padrão que se refere a criação de classes com assuntos bem específicos e definidos. Um elemento com responsabilidades amplamente relacionadas, e qunão realiza uma tremenda quantidade de trabalho tem alta coesão. Esses elementos incluem classes, subsistemas e afins. Uma classe com baixa coesão trata de diversos assuntos o que dificulta muito a sua manutenibilidade. Tais classes devem ser evitadas e geram problemas como:
- Difícil compeensão.

- Difícil de se reutilizar.

- Instáveis e constantemente afetados por mudanças.
Vale lembrar que a Alta Coesão também suporta Baixo Acoplamento.

### 2.4 Baixo Acoplamento

Acoplamento é a medida de quão um elemento esta conectado com outro, isto é, um elemento com baixo acoplamento é um elemento que não depende de muitos outros elementos. Essa medida de "muitos outros" é dependente do contexto a ser analizado.

O alto acoplamento causa os seguintes problemas:

- Mudanças em uma classe causam mudanças em diversas outras;
- Difícil entendimento de uma classe isolada;
- Difícil reuso, pois será necessario a presença das dependencias.

Um extremo caso de baixo acoplamento acontece quando não há acoplamento entre as classes. Porém um baixo acoplamento nesse nivél não é desejável, porque representa um projeto incoerente, inchado e com objetos complexos que fazem todo o trabalho. Então um moderado grau de acoplamento é normal e necessário para um sistema que tenha uma boa colaboração entre seus objetos.

### 2.5 Controladora ou Controller

### 2.6 Polimorfismo

### 2.7 Invenção Pura ou Fabricação Pura

### 2.8 Indireção

### 2.9 Variações Protegidas

## Histórico de Versão

|Data|Versão|Descrição|Autor(es)|
|:--------:|:---:|:-------------------: |:-----------------------:|
|11/09/2021| 0.1 | Criação do documento e elaboração dos tópicos 1, 2, 2.3 e 2.4 | Antonio Ruan, Vinicius Vieira, Victor Samuel |

## Referências

<!-- > com autor: SOBRENOME, Nome. Título da matéria. Nome do site, ano. Disponível em: <URL>. Acesso em: dia, mês e ano.

> sem autor: TÍTULO da matéria. Nome do site, ano. Disponível em: <URL>. Acesso em: dia, mês e ano.

> Blog. ÚLTIMO NOME, Primeiro nome de autor do post. Título do post. Nome do blog, Cidade, dia do do post, mês do post. -->

> GROFFE, Renato. Desenvolvimento com qualidade com GRASP. DevMedia, 2013. Disponível em <a target ="_blank" href = "https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704">Acesse aqui</a>. Acesso em: 11 de Setembro de 2021.

> HENRIQUE, João. POO: O que é programação Orientada à Objetos?. Alura. 2019. Disponível em: <a target="_blank" href="https://www.alura.com.br/artigos/poo-programacao-orientada-a-objetos">Acesse aqui </a>. Acesso em: 11 de Setembro de 2021.

> BASSETTO, Nelson. – Responsibility Driven Design e GRASP – General Responsibility Assignment Software Principles. Arquitetura de Software e Afins. 10 de dezembro de 2011. Disponível em <a target ="_blank" href = "http://nelsonbassetto.com/blog/2011/12/rdd-responsibility-driven-design-e-grasp-general-responsibility-assignment-software-principles-1-de-2/">Acesse aqui</a> Acesso em: 11 de setembro de 2021.

> LARMAN, Craig. Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and the Unified Process (PDF) (2nd ed.). Prentice Hall. ISBN 0-13-092569-1. Acesso em: 11 de setembro de 2021.

