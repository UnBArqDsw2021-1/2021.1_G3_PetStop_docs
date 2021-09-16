# Escolha de GRASPs

## GRASP Especialista

Para a aplicação do padrão especialista, foram revistos os métodos do diagrama de classe e a seguinte alteração foi feita: Realocação do método verificarEvento().

O método verificar Evento depende das informações presentes no evento, assim o padrão especialista recomenda que sua implementação seja feita na classe Evento, com isso seguimos as recomendações do padrão de baixo acoplamento também.

- Antes

<img src="../../../images/classDiagramBeforeExpert.png" alt="Antes da alteração">

- Depois

<img src="../../../images/classDiagramAfterExpert.png" alt="Após a alteração">

## GRASP Controlador

A princípio para a utilização desse padrão não vimos a necessidade de alterar artefatos anteriores.

Conforme visualizamos no diagrama de pacotes, com o uso do pacote "controllers" teremos a implementação desse padrão através do uso de controllers para cada uma das nossas classes que delegarão todas os eventos relacionado a cada uma delas. Por exemplo haverá uma controller para usuário, outra para doações, eventos e assim em diante. Achamos essa implementação adequada pois facilita bastante a visualização do código e identificação do que cada classe realiza. Isso, além dos benefícios já citados nos estudos sobre GRASPs.

<img src="../../../images/ControllerGrasp.JPG" alt="Diagrama de pacotes">

## GRASP Polimorfismo 
Para a utilização desse padrão, foram realizadas as mudanças no Diagrama de Classes. As mudanças basearam-se na aplicação de Herança entre as classes filhas Doacao_Monetaria e Doacao_Modal, com a classe Abstrata pai Doacao. 

A implementação desse padrão favorece o reaproveitamento de código. 

- Antes
<div style="display: flex; width: 100%;">
<img style="width: 80%; margin: 0 auto;" src="../../../images/diagrama_classe_antes.png" alt="Antes da alteração">
</div>

- Depois

<div style="display: flex; width: 100%;">
<img style="width: 80%; margin: 0 auto;" src="../../../images/diagrama_classe_depois.png" alt="Depois da alteração">
</div>


|Data|Versão|Descrição|Autor(es)|
|:--------:|:---:|:-------------------: |:-----------------------:|
|14/09/2021 | 0.1 | Criação do documento e adição do tópico Especialista | Antonio Ruan |
|14/09/2021 | 0.2 | Adição do tópico Controlador | Vinícius Souza |
|14/09/2021 | 0.3 | Adição do tópico Polimorfismo | Victor Samuel |
|15/09/2021 | 0.4 | Revisão e atualização do documento | Gabriela Pivetta, Arthur Sena |
