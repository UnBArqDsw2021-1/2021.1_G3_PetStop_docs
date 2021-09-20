# Objetivo

O documento foi criado com o objetivo de assegurar um fluxo de trabalho contínuo e padronizado. Isso possibilitará rastreamento das funcionalidades desenvolvidas e facilitará a implementação de _pipeline_ de integração (CI - Continuous Integration) e entrega contínua (CD - Continuous Delivery). Dessa forma, será usada a estratégia de Git Flow.

# Glossário

- **Branch** → ramificação da correspondente versão do código fonte, podendo conter adições, correções, testes e/ou documentação;
- **Commit** → conjunto de alterações da respectiva _branch_ acompanhado de uma mensagem explicativa;
- **Master/Main** → _branch_ onde a versão mais estável do produto;
- **Devel/Development** → _branch_ de desenvolvimento do produto;

# Política de Branch

## Nomenclatura

Nos repositórios de desenvolvimento, todas _branchs_ criadas devem estar relacionadas a uma funcionalidade, correção ou teste. Consequentemente, nesse caso, ela estará associada a uma _issue_.

Para o caso do repositório de documentação, as _branchs_ não precisam estar relacionadas a _issues_, funcionalidades ou correções, sendo que o que as define é o tipo de documento a que ela está associada.

A nomenclatura das *branchs* deve seguir o seguinte padrão:

- **f**(número da *feature*)**i**(número da *issue*)**-**(título)

O título deve estar na língua inglesa, usando *underlines* para substituir os espaços. 

- Exemplo do repositório de desenvolvimento:  
    f02i03-crud_publication

- Exemplo do repositório de desenvolvimento:  
    f05i07-navigation_route

- Exemplo do repositório de documentação:  
    backlog

# Política de commits

O padrão usado nas mensagens dos _commits_ será a escrita na língua inglesa com verbos no infinitivo. A mensagem deve ser construída pelo tipo seguido da descrição, que deve possuir no máximo 50 caracteres. Caso for preciso mais, cria-se um resumo, adiciona-se uma linha em branco e descreve-se o _commit_ com o número de caracteres necessários, onde cada linha deve conter no máximo 72 caracteres. Além disso, um _commit_ deve ser feito a cada nova adição/correção. Esses são os chamados _commits_ atômicos.

- Exemplos:  
    **feat: create component button**

    **fix: fix error of home page**

O _commit_ deve corresponder a um dos seguintes tipos:

- **build** → alteração que afeta o sistema ou dependências externas;
- **ci** → alteração da configuração dos arquivos de _Continuous Integration_;
- **docs** → alterações na documentação;
- **feat** → nova funcionalidade;
- **fix** → conserto de _bug_;
- **perf** → alteração de código que aperfeiçoa a performance;
- **refactor** → alteração do código que não conserta _bugs_ nem adiciona funcionalidade;
- **style** → alterações que não afetam o significade do código;
- **test** → adição/correção de testes.

## Histórico de versão

| Versão | Descrição                                                    | Autor                                      |
| ------ | ------------------------------------------------------------ | ------------------------------------------ |
| 1.0    | Criação do documento de boas práticas                        | Sara Campos, Edvan Gomes e Júlio Schneider |
| 1.1    | Revisão de documento de boas práticas e correção do markdown | Thiago Luiz, Vitor Samuel                  |
| 1.2    | Correção dos links das referências                           | Thiago Luiz, Arthur Sena, Edvan Gomes      |
| 1.3    | Revisão e atualização do documento                           | Thiago Luiz, Gabriela Pivetta, Edvan Gomes      |

### Referências bibliográficas

- [Conventional Commits](https://conventionalcommits.org/en/v1.0.0/) (Acessado em 15/09/2021)
- [Commit message guidelines](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines) (Acessando em 15/09/2021)
- [Política de commmits](https://fga-eps-mds.github.io/2019.2-Git-Breakdown/docs/commits) (Acessado em 15/09/2021)
