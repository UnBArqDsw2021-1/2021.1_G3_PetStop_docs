# Padrões Extras

## React Provider Pattern

- A utilização da biblioteca React é extremamente atrelada aos
componentes, funcionalidade que basicamente caracteriza a
ferramenta e seu funcionamento, dentro delas temos as conhecidas
props que seriam as propriedades passadas através da hierarquia
na árvore de componentes, porém acaba dando muito trabalho
visto que para chegarmos de A até o componente D por exemplo,
necessitaríamos passar por B e C antes. É nesse momento em que
utilizar do Provider Pattern pode se tornar mais vantajoso.
- O Provider é uma forma mais eficiente de fazer esse
compartilhamento, ele funciona da seguinte forma: O componente
Provider recebe o estado como props e, depois disso, cada
componente filho tem acesso implícito ao estado gerenciado, ou
seja, uma parte nesse padrão torna as propriedades acessíveis no
context e a outra parte torna disponibiliza o context para os
componentes que precisam consumí-lo.

### Pontos Positivos

- Facilita na manutenção assim como melhora possivelmente o
desempenho da aplicação.

### Pontos Negativos

- Por se tratar de React, pode-se ter dúvidas durante sua
implementação, visto que é necessário conhecimentos prévios
da bilbioteca.

### É possível de se utilizar no projeto?

- É possível porém é necessário uma decisão por parte dos
membros que tenham mexido com essa ferramenta antes.

## Continuation-passing

- Associado à ferramenta muito utilizada para o Back-End de
aplicações em JavaScript, chamada de NodeJS existem alguns
padrões de projeto que também podem ser utilizados, dentre eles
falaremos do Continuation-passing
- Esse padrão serviria principalmente em funções assíncronas,
mas de que forma usamos Continuation-passing? A forma para se
utilizar esse padrão é basicamente criar uma função com um
parâmetro extra, nela será passado uma outra função com apenas
um parâmetro, dessa forma quando a função terminar ela fará a
continuação utilizando a outra função de um parâmetro. Desse jeito
teremos no código diversos fatores que se tornarão mais explícitos
do que implícitos utilizando o padrão de design usual.

### Pontos Postivos

- Facilita a manutenção do código, visto que o erro se dá em
uma função criada, e não um erro implementado pela
linguagem.

### Pontos Negativos

- Caso seja um projeto grande pode ser problemático de se
implementar muitas funções o que dificulta manutenção e
prejudica no desempenho.

### É possível de se utilizar no projeto?

- Tendo a visão de que o nosso projeto é algo relativamente
pequeno, é possível sim a utilização desse padrão.

## Referências

- <https://oieduardorabelo.medium.com/padr%C3%B5es-em-rea>
ct-provider-pattern-b520c37ed733
- Contato com a Milene
- <https://en.wikipedia.org/wiki/Continuation-passing_style>
- <https://medium.com/emanuelg-blog/reflex%C3%A3o-em-padr>
%C3%B5es-de-projeto-para-node-js-b7344f2529c7
