# GoF Comportamental
<p>O padrão GoF Comportamental resumidamente atua sobre qual o comportamento das entidades, ou seja, quais são as responsabilidades que são atribuídas a cada uma das entidades.</p>

## Strategy
<p>Esse padrão de projeto de forma clara é o que delega as responsabilidades adquiridas pelas entidades, atribuindo, portanto, o comportamento. Assim a comunicação entre os objetos é aprimorada, pois há a distribuição das responsabilidades. O objetivo é representar uma operação a ser realizada sobre os elementos de uma estrutura de objetos.</p>
<p>Esse padrão é facilmente implementado utilizando as classes abstratas e/ou interfaces da programação orientada a objetos. O contexto relaciona-se com a parte mais abstrata, onde ainda não se sabe o como deve ser feito, apenas com quem. Dessa forma, cabe a camada mais concreta a implementação do método em si, fornecendo uma escalabilidade maior ao software, onde novas soluções para aquele contexto são facilmente acopladas ao sistema.</p>
<p>O Strategy geralmente descreve diferentes maneiras de fazer a mesma coisa, permitindo que você troque esses algoritmos dentro de uma única classe contexto. Ele trabalha a nível de objeto, permitindo que você troque os comportamentos durante a execução.</p>

## Pontos Positivos
- Melhoria da manutenção do código o qual é frequentemente usado durante o desenvolvimento de uma aplicação
## Pontos Negativos
- Necessidade de conjuntos de classe para serem usadas em execução
- Vários níveis de abstração, pode se fazer necessário em determinado contexto, porém isso poderá impactar significativamente na performance da aplicação.
### É possível adaptar esse padrão para o projeto?
É possível sua utilização no projeto, visto que temos formas de doação, dessa forma com o uso do Strategy podemos definir diferentes responsabilidades para cada forma de doação.
### Strategy Base
![Strategy Base](./images/StrategyBase.jpg)

### Strategy Projeto
![Strategy Projeto](./images/StrategyProjeto.jpg)
## Versionamentos
|Data|Versão|Descrição|Autor|
|:--------:|:---:|:-------------------: |:-----------------------:|
|09/09/2021| 0.1 | Criação do documento | Pedro Vítor de Salles Cella |

## Referências
- Site: https://pt.wikipedia.org/wiki/Strategy
- Repositório: https://unbarqdsw.github.io/2020.1_G12_Stock/#/Project/Estudos/comportamental?id=strategy
- Site: http://www.macoratti.net/08/08/net_stgy.htm