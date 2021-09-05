module ModuloNome

    def metodo_padrao
        puts 'Eu sou um módulo'
    end

end

class ClassName
    #Maneira de incluir o módulo em uma classe
    include ModuloNome
end

objeto = ClassName.new

objeto.metodo_padrao