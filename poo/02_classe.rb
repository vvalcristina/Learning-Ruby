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

#O método da classe filha está sobrescrevendo o método da classe mãe
objeto = ClasseFilha.new
objeto.correr