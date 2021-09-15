# Escolha de GRASPs

## GRASP Especialista

Para a aplicação do padrão especialista, foram revistos os métodos do diagrama de classe e a seguinte alteração foi feita:

- Antes

<img src="../../../images/classDiagramBeforeExpert.png" alt="Antes da alteração">

- Depois

<img src="../../../images/classDiagramAfterExpert.png" alt="Após a alteração">

O método verificar Evento depende das informações presentes no evento, assim o padrão especialista recomenda que sua implementação seja feita na classe Evento, com isso seguimos as recomendações do padrão de baixo acoplamento também.

## GRASP Controlador

A princípio para a utilização desse padrão não vimos a necessidade de alterar artefatos anteriores.

<img src="../../../images/ControllerGrasp.JPG" alt="Diagrama de pacotes">

Conforme visualizamos no diagrama de pacotes, com o uso do pacote "controllers" teremos a implementação desse padrão através do uso de controllers para cada uma das nossas classes que delegarão todas os eventos relacionado a cada uma delas. Por exemplo terá uma controller para usuário, outra para doações, eventos e assim em diante. Achamos essa implementação adequada pois facilita bastante a visualização do código e identificação de, qual classe realiza o quê. Isso além dos benefícios já citados nos estudos sobre GRASPs.

## GRASP Polimorfismo 
Para a utilização desse padrão, foram realizadas as mudanças no Diagrama de Classes. As mudanças basearam-se na aplicação de Herança entre as classes filhas Doacao_Monetaria e Doacao_Modal, com a classe Abstrata pai Docao. 

- Antes

<img src="../../../images/diagrama_classe_antes.png" alt="Antes da alteração">

- Depois

<img src="../../../images/diagrama_classe_depois.png" alt="Depois da alteração">

### Justificativa
A implementação desse padrão favorece o reaproveitamento de código. 

|Data|Versão|Descrição|Autor(es)|
|:--------:|:---:|:-------------------: |:-----------------------:|
|14/09/2021| 0.1 | Criação do documento e adição do tópico Especialista | Antonio Ruan |
|14/09/2021 | 0.2 | Adição do tópico Controlador | Vinícius Souza |
|14/09/2021 | 0.3 | Adição do tópico Polimorfismo | Victor Samuel |
