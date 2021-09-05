# Programação Orientada a Objetos

**Classes**

* Letra maiúscula sempre.
* Uma classe é composta por atributos, métodos e construtores.

```bash
    class ClassName

        #Equivalete a getter e setter no Java
        attr_accessor :nome
        
        #Só permite leitura
        attr_reader :nomeum

        #Só permite escrita
        attr_writer :nomedois

        #Get
        def nome
            @nome
        end

        #Set
        def nome =(nome)
            @nome= :nome
        end
    end

    objeto = ClassName.new
    objeto.nome = "Valeria"
    puts objeto.nome
```

**Métodos**

* Nome todo em minúsculo.
* Se for nome composto tem o _ entre as palavras.

```bash
    def metodo
        puts "Corpo do método"
    end
    
    def metodo_composto
        puts "Corpo do método composto"
    end

```

**Atributos**

* Variáveis de instância.
* São sempre privados em ruby e começam com @.
* Não há como alterá-los de fora da classe.
* Apenas os métodos de um objeto podem alterar seus atributos.

**Herança**

* Posso herdar tudo que tiver em um método através de outra classe.

```bash
    class Heranca < ClassName
    end

    objeto_heranca = Heranca.new
    objeto_heranca.metodo_composto

```

**Overrinding**

* Recurso de linguagem que permite que uma subclasse forneça uma implementação específica de um método que já é fornecido por uma de suas superclasses.
* A implementação na subclasse *substitui* a implementação na superclasse.

```bash
    class ClasseMae
        def correr
            puts 'A mãe corre'
        end
    end

    class ClasseFilha < ClasseMae
        def correr
            puts 'A filha corre'
        end
    end

    objeto = ClasseFilha.new
    objeto.correr
```

**Super**

* Para invocar o método correspondente da classe pai.

```bash
    class ClasseMae
        def correr
            puts 'A mãe corre'
        end
    end

    class ClasseFilha < ClasseMae
        def correr
            puts super 
            puts "Cansei"
        end
    end

    #O super invoca o método correspondente da classe pai
    objeto = ClasseFilha.new
    objeto.correr
```

**Módulos**

* Uma maneira de agrupar métodos, classes e constantes.
* Os módulos fornecem um *namespace* e evitam confrontos de nomes.
* Não pode ser instanciado e nem herdado.
* Os módulos podem ser incluídos na classe através de um *include*.
* Uma classe pode possuir vários módulos.
* Módulos implementam a facilidade *mixin*.
* Definem um namespace (uma caixa de proteção) no qual seus métodos e constantes podem ser reporduzidos sem ter que se preocupar com outros métodos e constantes.


```bash
    module ModuloNome

    def metodo_padrao
        puts 'Eu sou um módulo'
    end

    end

    class ClassName
        include ModuloNome
    end

    objeto = ClassName.new

    objeto.metodo_padrao
```

**Polimorfismo**

* Capacidade de um objeto de ser referenciado de várias formas.
* No polimorfismo um objeto nasce de um tipo e morre naquele tipo, o que muda é a forma como nos referimos a ele.

```bash

    class Cachorro
        def latir
            puts 'au au au'
        end
    end

    class CachorroGrande
        def latir
            puts 'au au'
        end
    end

    class Pessoa
        def agarra_cachorro(cachorro)
            cachorro.latir
        end
    end

    c1 = Cachorro.new
    c2 = CachorroGrande.new

    p = Pessoa.new

    p.agarra_cachorro(c1)
    p.agarra_cachorro(c2)
``