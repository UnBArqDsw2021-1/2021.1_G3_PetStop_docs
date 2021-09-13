# GoF Criacional

<p>Os padrões GoF Criacionais são utilizados quando existe uma hierarquia que é muito acessada e têm muitas criações de instâncias sendo demandadas para ela, o que geralmente é complicado de ser administrado. Também atuam em dois principais problemas: 

- "Definir qual classe concreta deve ser utilizada para criar o objeto"
- "Definir como os objetos devem ser criados e como eles se
relacionam com outros objetos do sistema"</p>

## Singleton

<p>O Singleton é considerado como um (anti)-padrão de projeto, isso se deve ao fato dele seguir uma metodologia contrária aos outros padrões. Basicamente sua implementação garante que só exista uma instância daquele objeto. Sua implementação serve para programas que necessitam que um objeto seja instanciado uma única vez, um bom exemplo disso é um Banco de Dados, nele serão feitos diversos acessos e seu desempenho seria afetado caso a chamada para o mesmo gerasse sempre uma nova instância. Por este motivo o uso de um Singleton garante essa evasão, também garantindo que qualquer local da aplicação possa acessá-lo.</p>

### Pontos Positivos

- Garante que nenhuma outra classe crie novas instâncias, sem necessidade.
- Auxilia no Desempenho.
- Ganha um ponto de acesso global para aquela instância.

### Pontos Negativos

- Nenhuma outra classe pode instanciá-la, é necessário que sua própria classe a instancie.
- Pode mascarar um desing ruim, onde um componente sabe muito sobre outro.

### É possível usar no projeto?

- Sim, visto que assim como no exemplo, também temos um banco de dados, garantindo desempenho duarante o uso do banco.

### Singleton Base

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=000000&layers=1&nav=1&title=Singleton%20Base#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1ek59B6J7Ddlo4yD7pJuVwguPnOfs2pVz%26export%3Ddownload"></iframe>

### Singleton Projeto

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=000000&layers=1&nav=1&title=Singleton%20Projeto#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oUqkK33QCT20yyZGkXfmdpyATDGJpBqx%26export%3Ddownload"></iframe>

## Factory Method

O Padrão Factory Method tem como objetivo auxiliar na redução do acoplamento do software. Para isso são retiradas as dependências explícitas através do encapsulamento da escolha da classe concreta a ser utilizada na criação de objetos de um determinado tipo. Assim a instanciação é delegada às subclasses. Este padrão deve ser usado, principalmente, quando uma classe não pode antecipar ou conhecer a classe dos objetos que deve criar e quando uma classe quer suas subclasses para especificar os objetos que cria.
### Pontos Positivos

- O principal ponto positivo é o baixo acoplamento. Se a implementação de um Product for alterado, não afeta sua Creator, pois a Creator não está fortemente ligada a alguma ConcreteProduct.
- Há também uma melhora na coesão, já que cada classe tem funções específicas e bem definidas.
- Maior flexibilidade para as classes.
- Para acrescentar novos tipos concretos basta criar uma nova classe ConcreteCreator, sem alterar as demais, apenas
criando instâncias para esse ConcreteProductX() no método createProduct() de ConcreteCreator. Portanto, ganhamos em  reutilização, manutenibilidade, coesão, dentre outros aspectos relevantes para a programação de sistemas Orientados a Objetos.
### Pontos Negativos

- Especializar uma classe apenas para instanciar um objeto de uma subclasse de outra superclasse acaba sendo muito trabalho desnecessário, por isso deve-se analizar com cautela se o padrão é adequado para o projeto em questão.
### É possível usar no projeto?

- Sim, como mostra no exemplo, no projeto a classe Eventos pode ser de alguns tipos diferentes e cada um tem suas peculiaridades. Para baixar o nível de acoplamento e repetição de código, pode ser utilizado o Factory Method.

### Factory Method Base

![Factory Method Base](./images/factory-method-base.png)
### Factory Method Projeto

![Factory Method Projeto](./images/factory-method-projeto.png)
## Versionamentos

|Data|Versão|Descrição|Autor|
|:--------:|:---:|:-------------------: |:-----------------------:|
|11/09/2021| 0.1 | Criação do documento, adição do Padrão Singleton | Paulo Gonçalves Lima, Pedro Vítor de Salles Cella |
|12/09/2021| 0.2 | Revisão do Padrão Singleton | Gabriela Pivetta |
|12/09/2021| 0.3 | Adição da descrição geral dos GoFs Criacionais | Gabriela Pivetta |
|12/09/2021| 0.4 | Adição do Padrão Factory Method | Gabriela Pivetta |

## Referências

- SERRANO, Milene. Vídeo aulas sobre Padrões de Projeto. Último acesso em 12/09/2021.
- [Refactoring Guru](https://refactoring.guru/design-patterns/singleton)
- [Grupo STOCK](https://unbarqdsw.github.io/2020.1_G12_Stock/#/Project/EstudoDirigido?id=estudos)
- [Dev Media](https://www.devmedia.com.br/patterns-factory-method/18954)
