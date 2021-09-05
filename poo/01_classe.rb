class ClassName

    #Equivalete a getter e setter no Java
    attr_accessor :nome
    
    #Só permite leitura
    #attr_reader :nomeum

    #Só permite escrita
    #attr_writer :nomedois

    def metodo
        puts "Corpo do método"
    end
    
    def metodo_composto
        puts "Corpo do método composto"
    end

end

#Herança
class Heranca < ClassName
end


objeto = ClassName.new
objeto.nome = "Valeria"
puts objeto.nome
objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new
objeto_heranca.metodo_composto