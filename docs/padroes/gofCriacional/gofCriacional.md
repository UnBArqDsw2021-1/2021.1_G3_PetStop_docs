# GoF Criacional

## Singleton

<p>O Singleton é considerado como um (anti)-padrão de projeto, isso se deve ao fato dele seguir uma metodologia contrária aos outros padrões, basicamente sua implementação garante que só exista uma instância daquele objeto. Sua implementação serve para programas que necessitam que um objeto seja instanciado uma única vez, um bom exemplo disso é um Banco de Dados, nele serão feitos diversos acessos, seu desempenho seria afetado caso a chamada para o mesmo gerasse sempre uma nova instância, por isso o uso de um Singleton garante esse evasão, também garantindo que qualquer local da aplicação possa acessá-lo.</p>

### Pontos Positivos

- Garante que nenhuma outra classe cria novas instâncias, sem necessidade.
- Auxilia no Desempenho

### Pontos Negativos

- Nenhuma outra classe pode instanciá-la, é necessário que sua própria classe a instancie

### É possível usar no projeto?

- Sim, visto que assim como no exemplo, temos também um banco de dados, garantindo desempenho duarante o uso do banco.

### Singleton Base

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=000000&layers=1&nav=1&title=Singleton%20Base#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1ek59B6J7Ddlo4yD7pJuVwguPnOfs2pVz%26export%3Ddownload"></iframe>

### Singleton Projeto

<iframe frameborder="0" style="width:100%;height:500px;" src="https://viewer.diagrams.net/?tags={}&highlight=000000&layers=1&nav=1&title=Singleton%20Projeto#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oUqkK33QCT20yyZGkXfmdpyATDGJpBqx%26export%3Ddownload"></iframe>

## Versionamentos

|Data|Versão|Descrição|Autor|
|:--------:|:---:|:-------------------: |:-----------------------:|
|11/09/2021| 0.1 | Criação do documento, adição do Padrão Singleton | Paulo Gonçalves Lima, Pedro Vítor de Salles Cella |