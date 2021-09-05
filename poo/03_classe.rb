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