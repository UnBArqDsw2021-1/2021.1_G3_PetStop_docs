# GoFs Estruturais

Os padrões GoFs de estrutura têm seu foco em como objetos e classes são compostos para formar estruturas maiores. A flexibilidade obtida pela composição dinâmica de objetos provém da capacidade de mudar a composição em tempo de execução o que não é possível com a composição estática. Visam diminuir a dependência de um sistema gerada pela interação de seus objetos, facilitando assim sua manutenção e escalabilidade.

## Decorator

O padrão Decorator adiciona funcionalidades a objetos de forma dinâmica (em tempo de execução), permitindo assim a expansão do objeto de maneira mais flexível, ou seja, utilizando esse padrão nós podemos expandir uma instância sem precisar utilizar herança, somente composição, algo que é não somente recomendado na orientação a objetos como também um princípio da mesma. Basicamente o Decorator envelopa um objeto para fornecer novos comportamentos.

#### Pontos Positivos

- Facilidade na aplicação
- Capacidade de adicionar diversos comportamentos
- Poder adicionar e remover comportamentos em tempo de execução

#### Pontos Negativos

- Dificuldade na compreensão do código
- Quanto mais decorators em camadas, mais complexo seu código se torna

#### É possível adaptar esse padrão para o projeto?

Sim, dentro do projeto existe uma variação nas categorias do tipo de pessoa o qual irá comparecer o evento, sendo o tipo usuário o qual aproveita dos serviços ofertados e o tipo voluntário que participa trabalhando dos serviços ofertados. Dessa forma u Decorator poderá servir para implementar esses dois comportamentos.

### Decorator Base

![Decorator Base](./images/DecoratorBasico.jpg)

### Decorator Projeto

#### A nível de modelagem

![Decorator Projeto](./images/DecoratorProjeto.jpg)

#### A nível de código

```js

export class Pessoa{
  this.verificarEvento(filters: Event): List[Event];
  this.joinEvento(obj: Evento): Evento;
}
```

```js
export interface DecoratorPessoa extends Pessoa {
  addPet(){}

  removerAdocao(): Void{}

  criarAdocao(): Void{}

  realizarDoacao(): Void{}

  transferirPet(): Void{}
  
}
```

```js
export class DecoratorUsuario extends DecoratorPessoa {
  addPet(pet: Pet): Pet{}

  removerAdocao(evento: Evento): bool{}

  criarAdocao(pet: Pet): bool{}

  realizarDoacao(): Doacao{}

  transferirPet(usuario: Usuario, pet: Pet): Void{}
}
```

```js
export class DecoratorUsuario extends DecoratorVoluntario {
  criarEvento(evento: Evento): Evento{} 

  removerEvento(evento: Evento): Bool {}

  cadstrarLocal(local: Local): Local {}

  addPet(pet: Pet): Pet{}

  removerAdocao(evento: Evento): bool{}

  criarAdocao(pet: Pet): bool{}

  realizarDoacao(): Doacao{}

  transferirPet(usuario: Usuario, pet: Pet): Void{}
}

```

## Adapter

Esse padrão de projeto permite a conversão uma inteface de uma classe existente em outra. Utilizada para permitir a comunicação entre classes que são incompatíveis (ex.: libs, plugins, códigos legado).

#### Pontos Positivos

- Faz com que classes possam ser reutilizadas para uma interface que o cliente requer
- Faz com que se possa introduzir novos tipos de adaptadores sem que o código fonte quebre

#### Pontos Negativos

- Pode aumentar a complexidade do código, pois são introduzidos novos conjuntos de interfaces e classes

#### É possível utilizar esse padrão para o projeto?

O esperado é que este padrão não se faça necessário, considerando que o projeto está sendo construído do início, não existem interfaces prévias.

### Adapter Base

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=0000ff&layers=1&nav=1&title=Adapter%20base#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1nNK93rKBx29pL-MQizBiRo8VODXcrGMJ%26export%3Ddownload"></iframe>

## Facade

Esse padrão de projeto serve como uma interface/máscara para uma estrutra de código mais complexa. Cria pontos de entrada para determinadas partes do sistema, como serviços externos, camadas da aplicação e objetos complexos dentro em determinadas partes do código.

#### Pontos Positivos

- Consegue isolar o código da complexidade dos subsistemas
- As dependências dos subsistemas serão possivelmentes minimizadas
- Subsistemas são mais fáceis de serem utilizados

#### Pontos Negativos

- Pode se tornar um [objeto deus](https://en.wikipedia.org/wiki/God_object)

#### É possível utilizar esse padrão para o projeto?

É, porém ainda não necessária, já que o projeto não possui subsistemas complexos o suficientes para a implementação de uma fachada.

### Facede Base

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=0000ff&layers=1&nav=1&title=Facade%20Base#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1lVHbGQwmJsBhUOxOhxa-FYy9FbISRQWb%26export%3Ddownload"></iframe>

## Versionamentos

|    Data    | Versão |        Descrição         |             Autor              |
| :--------: | :----: | :----------------------: | :----------------------------: |
| 08/09/2021 |  0.1   |   Criação do documento   |  Pedro Vítor de Salles Cella   |
| 08/09/2021 |  0.2   |   Adição do Decorator    |  Pedro Vítor de Salles Cella   |
| 11/09/2021 |  0.3   |    Adição do Adapter     |      Paulo Gonçalves Lima      |
| 14/09/2021 |  0.4   |     Adição do Facade     |      Paulo Gonçalves Lima      |
| 16/09/2021 | 0.4.1  | Revisão e adição textual | Arthur Sena e Gabriela Pivetta |
| 16/09/2021 | 0.5  | Adição do nível de código do Decorator | Paulo Gonçalves Lima, Pedro Vítor de Salles |

## Referências

- [Playlist Sobre Padrões de Projeto](https://youtube.com/playlist?list=PLbIBj8vQhvm0VY5YrMrafWaQY2EnJ3j8H)
- [Wikipedia, Padrões de Projeto](https://pt.wikipedia.org/wiki/Padr%C3%A3o_de_projeto_de_software#Padr%C3%B5es_estruturais)
- [Wikipedia, Adapter Pattern](https://en.wikipedia.org/wiki/Adapter_pattern)
- [Wikipedia, Facade Pattern](https://en.wikipedia.org/wiki/Facade_pattern)
- [Refactoring Guru Adapter](https://refactoring.guru/design-patterns/adapter)
- [Refactoring Guru Facade](https://refactoring.guru/design-patterns/facade)
- [Macoratti](http://www.macoratti.net/13/02/net_decor1.htm)
- [Dev Media](https://www.devmedia.com.br/design-patterns-padroes-gof/16781)
- [Grupo Stock](https://unbarqdsw.github.io/2020.1_G12_Stock/#/Project/Estudos/estrutural)
