# Cucumber

## BDD 

**O que é?**

* *Behavior Driven Development* (Desenvolvimento guiado por comportamento).
* Técnica de desenvolvimento ágil que encoraja colaboração entre desenvolvedores, setores de qualidade e pessoas não-técnicas ou de negócios em um projeto de software.
* Se relaciona com o conceito de verificação e validação.
* É considerada uma evolução do TDD (*Test Driven Development*)

**Objetivo**

* O foco do BDD é a linguagem e as interações usadas no processo de desenvolvimento de software.
* Os desenvolvedores utilizam sua língua nativa em combinação com a *Ubiquitous Language*, que lhes permite concentrar nas razões pelas quais o código deve ser criado, e não em detalhes técnicos.

**Onde é utilizado**

* Possibilita a integração de todo time, pois qualquer membro pode construir **cenários**.


## Gerkin

* Serve como documentação do projeto e para testes automatizados.

## Cucumber

* Criado por membros da comunidade Ruby para apoiar o desenvolvimento de testes de aceitação utilizando a técnica de BDD.
* Hoje suporta Java, Python, C#.

Exemplo:

```bash
    FUNCIONALIDADE: Fazer Login

    CENÁRIO: Fazer login com sucesso
    DADO que eu tenho um usuário
    QUANDO faço login
    ENTÃO eu verifico se o login foi realizado
```

Para instalar: `gem install cucumber`

### RSPEC

* Framework de testes de unidade, semelhante ao Junit.
* Fornece uma DSL para descrever os comportamentos esperados do sistema.
* Quando comparado ao Junit ele possui os Asserts dentro de exemplos executáveis, enquanto no Junit possuímos apenas asserts.

Para instalar: `gem install rspec`

### Criando um projeto:

```bash
    1. mkdir tests/ && cd tests/
    2. cucumber --init
```

Entendendo a arquitetura:

```bash
    ├── tests                          <- Raiz do projeto
        ├──features
            ├──specs                   <- Onde ficam os arquivos feature
            ├──step_definitions        <- Onde serão executados os testes
            ├──support                 <- Onde ficam as configurações
                ├──env.rb              <- Arquivo de configuração
    ├──Gemfile                         <- Onde instalamos as gem que precisamos no projeto
```

**Features**:

* Pode ter apenas uma funcionalidade.
* Pode descrever uma regra da funcionalidade.
* Pode ter vários cenários daquela funcionalidade.
* Pode ser escrita em qualquer linguagem.

Para executar o projeto:

```bash
    1. cd tests/
    2. cucumber

```

**Cenários**:

* Consistem em etapas:
  
  * **Givens (Dado)**
    * Possui a finalidade de colocar o sistema em um **estado conhecido**.
    * Antes do usuário (ou sistema externo) inicie a interação com o sistema.
    * Evite falar sobre interações do usuário em Givens.
    * Quando se cria casos de uso, os givens seriam as **pré-condições**.
  
  * **Whens (Quando)**
    * Tem o objetivo de **descrever a ação-chave** que o usuário realiza (Transição de estado).
  
  * **Thens (Então)**
    * Tem por objetivo **observar os resultados**.
    * As observações devem estar relacionadas ao valor/benefício do negócio na descrição do seu recurso.
    * Devem estar em algum tipo de saída - algo externo ao sistema (relatórios, interface do usuário, mensagens) e não algo que não tem valor comercial.

* Cucumber não distingue tecnicamente essas etapas, mas por questões de padrão e boas práticas essas etapas são adotadas.

* Etapas adicionais:
  
    * **And(e) e But(mas)**
      * Se você tem vários dados, *when* ou *given* você pode descrever o *and* ou *but*.
    
    Exemplo:

```bash
    CENÁRIO: Multiplos Givens
    DADO uma coisa
    E  outra coisa
    E ainda outra coisa
    QUANDO eu abro meus olhos
    ENTÃO eu vejo algo
    MAS eu não vejo outra coisa
```

**Esquema de cenário**:

* Esquema de cenário nos permite rodar vários cenários com a mesma funcionalidade onde apenas mudam o valor.
* Formado por uma tabela E <> (Parâmetros Delimitados).
* Fornecem um modelo que nunca é executadfo diretamente. É executado apenas uma vez para cada linha.


```bash
   ESQUEMA DO CENÁRIO: COMER

   DADO QUE EU TENHA UMA <QUANTIDADE> DE PEPINOS.
   QUANDO EU <COMO> PEPINOS.
   ENTÃO EU DEVERIA TER <SOBRADO> PEPINOS.

   EXEMPLOS:
   | QUANTIDADE | COMO | SOBRADO |
   | 12         | 5    | 7       |
   | 20         | 5    | 15      |

```

**Contexto**:

* Permite adicionar algum contexto a todos os cenários em um único recurso.
* Um contexto é como um cenário sem título, que contém uma série de etapas. A diferença ocorre quando ele é executado: o contexto será executado **antes** de cada um de seus cenários.

```bash
  CONTEXTO:
  DADO QUE EU TENHA 10 LARANJAS

  CENÁRIO: COMPRAR LARANJA
  QUANDO EU COMPRO 2 LARANJAS
  ENTÃO EU VERIFICO SE O TOTAL DE LARANJAS É 12.

```

**Data Table**:

