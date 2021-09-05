

# Ruby Básico

**Entradas e saída**:

* **Gets**: serve para ler tudo que é inserido no teclado pelo usuário.
* **Puts**: imprime o resultado na tela.

**Variáveis**:

* Integer
* Float
* String
* Boolean

**Comentários**:

* Em uma unica linha basta #
```bash
    #Comentar uma linha
```

* Comentar várias linhas:
 ```bash
    =begin
    texto enorme
    texto enorme
    texto enorme
    =end
    texto enorme
    texto enorme
    texto enorme
    texto enorme
 ```

**Interpolação**:

Concatenar variaveis.

**Coerção ou cast**:

* Transformar uma variável para int, float ou string, array ou símbolo.

```bash
    TO_I - converte a variável para inteiro.
    TO_F - converte a variável para float.
    TO_S - converte a variável para string.
    TO_A - converte a variável para array.
    TO_SYM - converte a variável para símbolo.
```

**Operadores aritméticos**:

```bash
    Adição: +
    Subtração: -
    Multiplicação: *
    Divisão: /
    Módulo (Pega o resto da divisão): %
    Exponenciação: **
```
**Operadores relacionais**:

```bash
    Maior : >
    Menor: <
    Maior ou igual: >=
    Menor ou igual: <=
    Diferente: !=
    Igual: ==
    Spaceship ( o resultado disso sempre dá): <=>
    Quando o elemento da direita e maior que da esquerda: -1
    Quando os elementos são iguais: 0
    Quando o elemento da esquerda é maior que da direita: 1
```

**Operadores de atribuição**:

```bash
   A = A+4 (Atribui um valor a uma variável)
   A += 4 (Equivale a A = A+4)
   A -=4 (Equivale a A= A-4)
   A *=4 (Equivale a A= A*4)
   A %=4 (Equivale a A= A%4)
   A /=4 (Equivale a A= A/4)
   A **=4 (Equivale a A= A**4)
```

**Estruturas condicionais**:

* **If, Elsif e Else**

```bash
    if(condicao1)
        instrucao1
    else
        instrucao2
    end
```

* **Unless**
  
  * Executa o código se a condicional for falsa. Se a condicional for verdadeira, o código especificado na clausula else será executado.

```bash
    unless(condicao1)
        instrucao1
    else
        instrucao2
    end
```

* **Case When**

  * Inicia uma definição de instrução de caso.


```bash
    case numero
    when 0
        puts 'Você digitou 0'
    when 1 ... 20
        puts 'Você digitou entre 1 e 20'
    when 21 ... 70
        puts 'Você digitou entre 21 e 70'
    when 71 ... 100
        puts 'Você digitou entre 71 e 100'
    else
        puts 'Você não digitou um numero'
    end
```

**Operadores Lógicos**:

* E (&&)
* OU (||)
* NEGAÇÃO (!)

**Estrutura de Repetição**:

* **While**
  * Enquanto o teste for *verdadeiro* executa o bloco de repetição.

* **Until**
  * Enquanto for *falso* executa a ação.

**Vetores e Arrays**

* São ordenadas, coleções indexadas por inteiro de qualquer objeto.

```bash
    VETOR = [1,2,3,4,5]
```

**Hashes**

* Um Hash é uma coleção de chaves exclusivas e seus valores.
* Também chamados de **arrays associativos**, eles são semelhantes aos arrays, mas onde um array usa inteiros como seu índice, um *hash* permite que você use qualquer tipo de objeto.

```bash
    NOTAS = {"JANE DOE" =>10, "JIM DOE" =>6 }
```

**Iterador EACH**:

* O iterador de cada retorna todos os elementos de uma matriz ou um hash.

```bash
    ARY = [1,2,3,4,5]

    ARY.EACH DO |I|
        PUTS I
    END
```

**Símbolos**:

* Qualquer caracter que tenha dois pontos. Ex: :A
* É uma string estática, que não muda de valor de memória.
* Muito usado para ser um identificador.
* "ABC".to_sym - transforma a String em símbolo.

**Operador de intervalo**:

* Vai de um número a outro sem precisar de um array.
* Com ... ele vai até o penúlmo elemento.
  
```bash
    (1...5)
    Vai de 1 a 4.
```

* Com .. ele vai até o último elemento.

```bash
    (1..5)
    Vai de 1 a 5.
```

**Times**:

* Escolhe a quantidade de vezes que você quer que se repita.

```bash
    5.times{puts "Valeria"}
``` 
