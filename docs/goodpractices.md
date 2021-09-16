# Objetivo

O documento foi criado com o objetivo de assegurar um fluxo de trabalho contínuo e padronizado. Isso possibilitará rastreamento das funcionalidades desenvolvidas e facilitará a implementação de *pipeline* de integração (CI - Continuous Integration) e entrega contínua (CD - Continuous Delivery). Dessa forma, será usada a estratégia de Git Flow.

# Glossário

- **Branch** → ramificação da correspondente versão do código fonte, podendo conter adições, correções, testes e/ou documentação;
- **Commit** → conjunto de alterações da respectiva *branch* acompanhado de uma mensagem explicativa; 
- **Master/Main** → *branch* onde a versão mais estável do produto;
- **Devel/Development** → *branch* de desenvolvimento do produto;

# Política de Branch

## Nomenclatura

Nos repositórios de desenvolvimento, todas *branchs* criadas devem estar relacionadas a uma funcionalidade, correção ou teste. Consequentemente, nesse caso, ela estará associada a uma *issue*. 

Para o caso do repositório de documentação, as *branchs* não precisam estar relacionadas a *issues*, funcionalidades ou correções, sendo que o que as define é o tipo de documento a que ela está associada.  

O padrão usado para nomear as *branchs* é número da *feature* e o número da *issue* seguida do título, que deve estar na língua inglesa com separação feita por *underline* ao invés de espaço. 

>> Exemplo do repositório de desenvolvimento:  
>> us02i03-crud_publication

>> Exemplo do repositório de desenvolvimento:  
>> us05i07-navigation_route

>> Exemplo do repositório de documentação:  
>> backlog


# Política de commits

O padrão usado nas mensagens dos *commits* será a escrita na língua inglesa com verbos no infinitivo. A mensagem deve ser construída pelo tipo seguido da descrição, que deve possuir no máximo 50 caracteres. Caso for preciso mais, cria-se um resumo, adiciona-se uma linha em branco e descreve-se o *commit* com o número de caracteres necessários, onde cada linha deve conter no máximo 72 caracteres. Além disso, um *commit* deve ser feito a cada nova adição/correção. Esses são os chamados *commits* atômicos. 

>> Exemplos:  
>> - **feat: create component button**
>> - **fix: fix error of home page**

O *commit* deve corresponder a um dos seguintes tipos: 

- **Build** →  alteração que afeta o sistema ou dependências externas;
- **CI** → alteração da configuração dos arquivos de *Continuous Integration*;
- **Docs** → alterações na documentação;
- **Feat** → nova funcionalidade;
- **Fix** → conserto de *bug*;
- **Perf** → alteração de código que aperfeiçoa a performance;
- **Refactor** → alteração do código que não conserta *bugs* nem adiciona funcionalidade;
- **Style** → alterações que não afetam o significade do código;
- **Test** → adição/correção de testes.

## Histórico de versão 

| Versão | Descrição | Autor |
| - | - | - |
| 1.0 | Criação do documento de boas práticas | Sara Campos, Edvan Gomes e Júlio Schneider | 

### Referências bibliográficas

- Conventional Commits - conventionalcommits.org/en/v1.0.0/ (Acessado em 15/09/2021)
- Commit message guidelines - github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines (Acessando em 15/09/2021)
- Política de commmits - fga-eps-mds.github.io/2019.2-Git-Breakdown/docs/commits (Acessado em 15/09/2021)