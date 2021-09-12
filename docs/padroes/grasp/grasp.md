# Estudo Dirigido - GRAPS
General Responsibilty Assignment Software Patterns (ou principles), também conhecido como GRASPS, são padrões que procuram fornecer diretrizes para construção de aplicações bem estruturadas e que possam ser facilmente adaptáveis diante da necessidade de mudanças. Esses padrões buscam atribuir responsabilidade a classes e objetos em projetos que seguem a POO, tendo como consequência direta das recomendações propostas por estes patterns: um código melhor organizado, de fácil manutenção e ainda, capaz de ser compreendido por diferentes desenvolvedores sem grandes dificuldades.

## Glossário
| Palavra/Conceito | Descrição |
|:----------------:|:---------:|
|     Pattern      |  É um conjunto de recomendações voltadas à resolução de uma necessidade específica e, por vezes, recorrente na área de desenvolvimento. | 
|       POO        |  Programação Orientada à Objetos - Seu objetivo é realizar uma maior abstração de estruturas do mundo real ao manuseio de programas e códigos. |
|       RDD        |  Metáfora que leva ao raciocínio de projetos de software orientados a objetos sob o ponto de vista do conceito de responsabilidade. |
|       GUI       |  "Graphical User Interface" ou Interface Gráfica do Usuário, consiste em um modelo de interface que permite a interação com dispositivos digitais através de elementos gráficos. 
|       MVC       |  Padrão arquitetural dividida em 3 componentes estruturais: Model, View, Controller, responsável por contribuir na otimização da velocidade entre as requisições feitas pelo comando dos usuários.


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
Esse modelo é estudado após o questionamento sobre quais classes possuem a atribuição de criar intâncias de outros elementos. Seu objetivo é definir o objeto que que precise ser conectado ao objeto criado em algum evento. 

Atribua à classe B a responsabilidade de criar uma nova intância da classe A se um ou mais dos itens seguintes for verdade:

- B agrega objetos de A.
- B "contém" objetos de A.
- B registra intâncias de Objetos de A. 
- B usa objetos de A de maneira próxima.
- B tem os dados de inicialização que serão passados para A quando ele for criado (Assim, B é um especialista com relação à criação de A).

Se mais de uma opção for aplicada, prefira uma classe B que agrega ou contém a classe A.

<i>Com isso, o código está menos acomplado se a relação for de agregação, e se for de composição, a parte só existe se o todo existir.</i>

#### Benefícios 
- Favorece o acomplamento fraco

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão? Sim
- Quais documentos necessitam de refatoração para a implementação desse padrão? Diagrama de classes, de sequência e comunicação. 
 
### 2.2 Especialista

O padrão especialista tem como preocupação a distribuição coesa de responsabilidades entre as classes, o que tende 
a um projeto ser mais fácil de entender, manter e estender, além de aumentar as oportunidades de reutilização.

Com isso é recomendavel a implementação de métodos em classes que detenham as informações necessárias para a execução dos mesmos.

A aplicação do padrão especialista rende os seguintes benefícios para o projeto:
- Encapsulamento da informação
- Baixo acoplamento
- Alta coesão

- É possível adaptar a forma de organização do nosso projeto a esse padrão?
    - Sim, os conceitos do padrão especialista já foram pensados no escopo do nosso projeto.
- Quais documentos necessitam de refatoração para a implementação desse padrão?
    - Nenhum

### 2.3 Alta Coesão

A alta coesão ou High Cohesion é um padrão que se refere a criação de classes com assuntos bem específicos e definidos. Um elemento com responsabilidades amplamente relacionadas, e que não realiza uma tremenda quantidade de trabalho tem alta coesão. Esses elementos incluem classes, subsistemas e afins. Uma classe com baixa coesão trata de diversos assuntos o que dificulta muito a sua manutenibilidade. Tais classes devem ser evitadas e geram problemas como:
- Difícil compeensão.

- Difícil de se reutilizar.

- Instáveis e constantemente afetados por mudanças.
Vale lembrar que a Alta Coesão também suporta Baixo Acoplamento.

### Benefícios
- Fácil compreensão do design.
- Manutenção e melhorias se tornam mais simples.
- Apoio ao baixo acoplamento.
- Facilita o reuso pois uma classe coesiva pode ser usada por um propósito específico.

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão?
    - Sim. Conforme estamos desenvolvendo o projeto estamos buscando a criação de classes coesivas.
- Quais documentos necessitam de refatoração para a implementação desse padrão?
    - Conforme ocorre o desenvolvimento do projeto e caso surgem novas classes, acredita-se que haverá necessidade de alterações nos de classe, comunicação e sequência.

### 2.4 Baixo Acoplamento

Acoplamento é a medida de quão um elemento esta conectado com outro, isto é, um elemento com baixo acoplamento é um elemento que não depende de muitos outros elementos. Essa medida de "muitos outros" é dependente do contexto a ser analizado.

O alto acoplamento causa os seguintes problemas:

- Mudanças em uma classe causam mudanças em diversas outras;
- Difícil entendimento de uma classe isolada;
- Difícil reuso, pois será necessario a presença das dependencias.

Um extremo caso de baixo acoplamento acontece quando não há acoplamento entre as classes. Porém um baixo acoplamento nesse nivél não é desejável, porque representa um projeto incoerente, inchado e com objetos complexos que fazem todo o trabalho. Então um moderado grau de acoplamento é normal e necessário para um sistema que tenha uma boa colaboração entre seus objetos.

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão?
    - Sim, já foi aplicado os conceitos de baixo acoplamento no nosso projeto.
- Quais documentos necessitam de refatoração para a implementação desse padrão?
    - Nenhum

### 2.5 Controladora ou Controller

Este padrão define a quem cabe a responsabilidade de tratamento de um evento em um sistema. Uma controladora é um objeto que não é de interface GUI. Se costuma ser atribuida a uma classe que:

- Represente todo o sistema, um dispositivo ou subsistema como um todo. (Controlador fachada).
- Represente um cenário de um caso de uso dentro do qual ocorra um evento. Classe geralmente denomidada por "\<NomeDoUserCase>Handler" ou  "\<NomeDoUserCase>Controller".

Corolário: Note que classes "window", "applet", "widget", "view" e "document" não devem cumprir tarefas associadas a eventos do sistema, elas tipicamente recebem esses eventos que são em seguida delegados a uma controladora.

### Benefícios

- Ajuda a verifica a sequencia de operações do sistema através dos estados do controlador.
- Amplia a possibilidade de reutilizar classes.
- Aumenta a possibilidade de interfaces "plugáveis".

#### Rastreamento com o projeto

- É possível adaptar a forma de organização do nosso projeto a esse padrão? 
    - Sim, com o modelo MVC, haverá a presença de classes controladoras para diversos eventos do sistema.
- Quais documentos necessitam de refatoração para a implementação desse padrão? 
    - Possívelmente alterações no diagrama de sequência, e de componentes para adequar corretamente esse padrão.

### 2.6 Polimorfismo
Este padrão define quem é o responsável quando o comportamento varia de acordo com o tipo (classe). Com isso, atribua a responsabilidade pelo comportamento - usando operações polimórficas - para as classes para quais o comportamento varia. Isso resulta em seções de código menos acopladas e mais coesas.

Corolário: Não teste o tipo de um objeto, e nem use a lógica condicional (if ou switch) para excutar várias alternativas com base no tipo.

#### Benefícios 
- Acoplamento de código
- Facíl manutenção 
- Reuso de código

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão? 
  - Sim, já temos métodos que usam esse padrão de relacionamento entre objetos.
- Quais documentos necessitam de refatoração para a implementação desse padrão? 
  - Diagrama de classes

### 2.7 Invenção Pura ou Fabricação Pura

Uma classe com métodos que, apesar do GRASP Especialista recomendar a sua implementação na propria classe, possa vir a ter baixa coesão por possuir métodos que tratam questões técnicas não pertencentes do domínio do objeto no mundo real. Com isso há a criação de uma classe artificial ou conveniente, que não representa um conceito de domínio do problema para ser distribuído esses métodos tipicos do mundo de software.

A invenção dessa classe artificil auxilia na:
- alta coesão;
- baixo acoplamento;
- reuso de metódos.

Se usada demasiadamente, a Fabricação Pura pode levar a vários objetos que dependem de informações de outros objetos para o seu funcinameto, afetando assim o acoplamento.

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão?
    - Sim. Como vamos utilizar o conceito de back e front end no nosso projeto, uma das aplicaões da Invenção Pura pode ser a criação de uma classe no front-end para se comunicar com o back-end, e também a criação de classes focadas na persistência de dados.
- Quais documentos necessitam de refatoração para a implementação desse padrão?
    - Diagrama de classes

### 2.8 Indireção
Este padrão irá atribuir a responsabilidade a um objeto intermediário para mediar entre outros componentes ou serviços que não sejam diretamente acoplados. O intermediário cria uma indireção entre os outros componentes, com isso, os componentes que estão entre o intermediário não dependem mais um do outro, mas sim da indireção. 

<i>A maior parte dos problemas em Ciência da Computação pode ser resolvida por um nível adicional de indireção</i>. É um velho provérbio com especial relevância para sistemas orientados a objetos. Larman, p 427.

#### Benefícios 
- Uma classe fracamente acoplada não é afetada (ou pouco afetada por mudanças em outras classes).
- Fácil entendimento
- Reuso facilitado de código

#### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão? 
  - Sim
- Quais documentos necessitam de refatoração para a implementação desse padrão? 
  - Diagrama de classes, de sequência e comunicação, e possivelmente os diagramas documentais do Banco de Dados. 

### 2.9 Variações Protegidas

Padrão responsável por auxiliar na identificação de variações previsíveis ou instabilidade, além de atribuir responsabilidade para a criação de interfaces mais estáveis. Pode-se dizer que ele é uma forma de indireção, porém focada no aspecto de proteção, garantido que por exemplo um código da parte B esteja <b>protegida</b> contra mudanças do código da parte A.

Sua proposta de solução também envolve:
- Encapsulamento, interfaces, polimorfismo, indireção e uso de outros padrões;
- Não haver comunicação entre objetos muitos distantes.

### Benefícios
- Garante a produção de interfaces mais estáveis (Que sofrem pouca ou quase nenhuma mudança caso ocorra alteração no código).
- Fácil compreensão.
- Reuso do cádigo.

### Rastreamento com o projeto
- É possível adaptar a forma de organização do nosso projeto a esse padrão?
    - Sim
- Quais documentos necessitam de refatoração para a implementação desse padrão? 
    - Semelhante ao de Indireção acreditamos que ocorrá alteração nos diagramas de classe, sequência, comunicação e diagramas referentes ao banco de dados. 
## Histórico de Versão

|Data|Versão|Descrição|Autor(es)|
|:--------:|:---:|:-------------------: |:-----------------------:|
|11/09/2021| 0.1 | Criação do documento e elaboração dos tópicos 1, 2, 2.3 e 2.4 | Antonio Ruan, Vinicius Vieira, Victor Samuel |
|12/09/2021| 0.2 | Elaboração dos demais subtópicos do tópico 2 | Antonio Ruan, Vinicius Vieira, Victor Samuel |

## Referências

<!-- > com autor: SOBRENOME, Nome. Título da matéria. Nome do site, ano. Disponível em: <URL>. Acesso em: dia, mês e ano.

> sem autor: TÍTULO da matéria. Nome do site, ano. Disponível em: <URL>. Acesso em: dia, mês e ano.

> Blog: ÚLTIMO NOME, Primeiro nome de autor do post. Título do post. Nome do blog, Cidade, dia do do post, mês do post. 

> Slide:  SOBRENOME, nome. titulo, ano. qtde slide. Disponível em: <https://www...>. Acesso em: xx/xx/xxxx. -->

> GROFFE, Renato. Desenvolvimento com qualidade com GRASP. DevMedia, 2013. Disponível em <a target ="_blank" href = "https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704">Acesse aqui</a>. Acesso em: 11 de Setembro de 2021.

> HENRIQUE, João. POO: O que é programação Orientada à Objetos?. Alura. 2019. Disponível em: <a target="_blank" href="https://www.alura.com.br/artigos/poo-programacao-orientada-a-objetos">Acesse aqui </a>. Acesso em: 11 de Setembro de 2021.

> BASSETTO, Nelson. – Responsibility Driven Design e GRASP – General Responsibility Assignment Software Principles. Arquitetura de Software e Afins. 10 de dezembro de 2011. Disponível em <a target ="_blank" href = "http://nelsonbassetto.com/blog/2011/12/rdd-responsibility-driven-design-e-grasp-general-responsibility-assignment-software-principles-1-de-2/">Acesse aqui</a> Acesso em: 11 de setembro de 2021.

> LARMAN, Craig. Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and the Unified Process (PDF) (2nd ed.). Prentice Hall. ISBN 0-13-092569-1. Acesso em: 11 de setembro de 2021.

> SERRANO, Milene. Arquitetura e Desenho de Software: AULA - GRASP_A - COMPLEMENTAR. 66 slides. Disponível em: <a target = "_blank" href = "https://aprender3.unb.br/pluginfile.php/897140/mod_label/intro/Arquitetura%20e%20Desenho%20de%20Software%20-%20Aula%20GRASP_A%20-%20Profa.%20Milene%20-%20Complementar.pdf">Acesse aqui</a>. Acesso em: 12 de Setembto de 2021.

> LIMA, Edirlei. Análise e Projeto Orientados por Objetos: Aula 03 – Padrões de Projeto GRASP. 52 slides. Disponível em: <a target = "_blank" href = "https://edirlei.com/aulas/poo/POO_Aula_03_Padroes_Projeto_GRASP_2015.pdf">Acesse aqui</a>. Acesso em: 12/09/2021. 