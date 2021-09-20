# Padrões Extras

## React Provider Pattern

React é uma biblioteca de JavaScript extremamente atrelada ao uso de componentes. Essa componentização é responsável por caracterizar ferramentas e seus respectivos funcionamentos. Além destes, existem as _props_, que são as propriedades passadas através da hierarquia na árvore de componentes. Entretanto, esse método é mais custoso, visto que, para ter acesso aos componentes filhos, é preciso passar por todos os intermediários. Nesse cenário, o Provider Pattern pode se tornar mais eficiente.

O Provider Pattern é capaz de ignorar o sistema de hierarquia do React, recebendo como estado as _props_. Graças a isso, todo componente filho tem acesso implícito àquele estado. Dessa forma, enquanto uma parte torna as propriedades acessíveis no _context_, a outra disponibiliza o _context_ para os componentes que precisam consumí-lo. Essa implementação facilita a manutenção e possivelmente melhora o desempenho do produto.

#### A nível de código

```
// Este provider compartilha para os componentes filhos um valor booleano
// que informa se o usuário está logado ou não

import React, { useState, useContext, createContext } from "react";

const AuthContext = createContext({
  signedIn: false,
});

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);

  async function signIn() {
    // loga
    setUser({
      name: "Teste",
    });
  }

  async function signOut() {
    // desloga
    setUser(null);
  }

  return (
    <AuthContext.Provider
      value={{
        signedIn: !!user,
        signIn,
        signOut,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export function useAuth() {
  const context = useContext(AuthContext);

  return context;
}
```

```
import { Router } from "./routes";
import { AuthProvider } from "./hooks/useAuth";

function App() {
  return (
    <AuthProvider>
      <Router />
    </AuthProvider>
  );
}

export default App;
```

```
// O componente de rotas devolve páginas diferentes a depender do
// estado signedIn provido pelo AuthProvider

import { useAuth } from "./hooks/useAuth";

export function Router() {
  const { signedIn } = useAuth();

  return signedIn ? (
    <div>{/* Componente de rotas para usuários já autenticados */}</div>
  ) : (
    <div>{/* Componente de rotas para usuários não autenticados */}</div>
  );
}
```

## Continuation-passing

Associado ao NodeJs, ferramenta muito utilizada para o Back-End de aplicações em JavaScript, o Continuation-passing é um padrão de projeto presente principalmente em funções assíncronas. Seu uso se dar pela criação de uma função com um parâmetro extra, na qual será passada uma outra função com apenas um parâmetro. Dessa forma, quando a função acabar de ser executada, será feita a continuação utilizando a outra função. Assim, o código terá diversos fatores que se tornarão mais explícitos do que implícitos.

Sua implementação facilita a manutenção do código, visto que em caso de erro, ele ocorre na função criada e não na implementação da linguagem. Por outro lado, caso o projeto seja robusto, pode se tornar problemática a implementação de muitas funções, pois haveria prejuízo no desempenho e dificuldade na rastreabilidade de erros.

## Referências

- [React Provider Pattern](https://oieduardorabelo.medium.com/padr%C3%B5es-em-react-provider-pattern-b520c37ed733)
- [Continuation-passing](https://en.wikipedia.org/wiki/Continuation-passing_style)
- [Padrões de projeto](https://medium.com/emanuelg-blog/reflex%C3%A3o-em-padr%C3%B5es-de-projeto-para-node-js-b7344f2529c7)

## Histórico de versionamento

| Versão | Descrição                                                                                                                          | Autor                                                                  |
| ------ | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| 0.1    | Criação do documento                                                                                                               | Pedro Cella e Paulo Gonçalves                                          |
| 0.2    | Revisão do documento, correções ortográficas, adição de conteúdo, correção das referências e criação do histórico de versionamento | Sara Campos, Edvan Gomes e Júlio Schneider                             |
| 0.3    | Adição do nível de código do padrão React Provider                                                                                 | Arthur Sena, Victor Samuel, Thiago Luiz, Antonio Ruan, Vinicius Vieira |
