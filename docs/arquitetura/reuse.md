# Reutilização de Software

## Introdução

A capacidade de reutilização de software é o reaproveitamento de componentes disponíveis, tornando possível a redução significativa de tempo e custos tanto de computação quanto de recursos humanos. 

No código fonte, os componentes que são desenvolvidos podem ser posteriormente usados

| Pontos Positivos |
| ---------------- |
| Redução de custo e tempo |
| Redução de código |

| Pontos Negativos |
| ---------------- |
| Dificuldade de reutilização por terceiros |
| Ambientes de desenvolvimento podem não estar preparados para a reutilização | 
| Risco de incompatibilidade com versões futuras | 

## Formas comuns de reutilização

Existem algumas ferramentas e técnicas que auxiliam na reutilização de código e padrões dentro do projeto, como:

- **Frameworks** - Frameworks são pacotes de códigos prontos, ou grandes bibliotecas, que podem ser utilizados no desenvolvimento de sistemas. A proposta de uso dessa ferramenta é aplicar funcionalidades, comandos e estruturas já prontas para garantir qualidade no projeto e produtividade.
- **Plugins** - Plugins são programas, ferramentas ou extensões que se encaixam ao programa principal para adicionar uma ou mais funções e recursos. 
- **Serviços** - Serviços devem ser independentes da aplicação que o usa, no caso de serviços especializados, eles podem ser oferecidos para uma variedade de usuários de diferentes organizações.
- **Componentes** - Componentes são unidades de composição com interfaces especificadas e com dependências explícitas de contexto, permitindo sua implantação de maneira indepedente.
- **Linhas de Produto** - São conjuntos de aplicações com uma arquitetura em comum e componentes compartilhados, sendo cada aplicação especializada para refletir necessidades diferentes.

No projeto, foram utilizados alguns framworks para essa finalidade.

# Frameworks

## Reutilização no Front-end

### **React**

O React é um framework de código aberto para interfaces gráficas (GUI) que tem como foco uma só coisa: tornar a experiência do usuário com a interface mais eficiente. Ela pode ser categorizada como o “V” no padrão MVC (Model-View-Controller).
O React permite que você reuse componentes que tenham sido desenvolvido em outras aplicações e que usem a mesma função. A função de reusabilidade é uma vantagem importante para desenvolvedores em geral.

### **React-Bootstrap**
Bootstrap é uma biblioteca front-end que fornece estruturas de CSS para a criação de sites e aplicações responsivas de forma rápida e simples. Além disso, pode lidar com sites de desktop e páginas de dispositivos móveis da mesma forma.
Originalmente, o Bootstrap foi desenvolvido para o Twitter por um grupo de desenvolvedores liderados por Mark Otto e Jacob Thornton Logo e se tornou uma das estruturas de front-end e projetos de código aberto mais populares do mundo



## Reutilização no Back-end

### **Node**
O Node.js pode ser definido como um ambiente de execução Javascript server-side.
Isso significa que com o Node.js é possível criar aplicações Javascript para rodar como uma aplicação standalone em uma máquina, não dependendo de um browser para a execução, como estamos acostumados.
Apesar de recente, o Node.js já é utilizado por grandes empresas no mercado de tecnologia, como Netflix, Uber e LinkedIn.
O principal motivo de sua adoção é a sua alta capacidade de escala. Além disso, sua arquitetura, flexibilidade e baixo custo, o tornam uma boa escolha para implementação de Microsserviços e componentes da arquitetura Serverless. Inclusive, os principais fornecedores de produtos e serviços Cloud já têm suporte para desenvolvimento de soluções escaláveis utilizando o Node.js.

### **Express**

O Express é um framework para aplicativo da web do Node.js que fornece um grande conjunto de recursos, como módulos middlewares de terceiros, para aplicações web e mobile.

## É possível utilizar no projeto?
Sim! O uso de frameworks com a reutilização de componentes ja está sendo aplicada no projeto.

## Histórico de versão

| Versão | Descrição    | Autor   |
| ------ | ------------ | ------- |
| 1.0    | Criação e elaboração do documento | Gabriela Pivetta, Sara Campos, Thiago Luiz |
| 1.1    | Revisão do documento e adição de conteúdo | Edvan Gomes, Sara Campos, Júlio Schneider |

### Referências bibliográficas

- [Software reusability metrics estimation: Algorithms, models and optimization techniques](https://www.sciencedirect.com/science/article/abs/pii/S0045790617323327) (Acessado em 15/10/2021)
- [Frameworks](https://rockcontent.com/br/blog/framework/) (Acessado em 15/10/2021)
- [Plugins](https://www.tecmundo.com.br/hardware/210-o-que-e-plugin-.htm) (Acessado em 15/10/2021)
- [Componentes](http://www.dsc.ufcg.edu.br/~jacques/cursos/map/html/comp/definicoes.htm) (Acessado em 15/10/2021)
- [Express](https://expressjs.com/pt-br/) (Acessado em 15/10/2021)