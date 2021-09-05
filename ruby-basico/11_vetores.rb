#No IRB
=begin
vetor = [1,2,3,4,5]

puts "vetor = #{vetor}"

puts "Posição 0: #{vetor[0]}"

vetor.delete(1)

puts "Deletando o valor 1"
puts "vetor = #{vetor}"

#Exemplos a serem executas no IRB

#HASHES

#hash = {"keys", "valor"}

#Chave a recebe o valor 1, etc.
#hashes = {"a" => "1", "b" => "2"}
#Imprimir o valor numero 1
#hashes["a"]

#Outra forma de sintaxe
#hashes = {:a => "1", :b => "2"}
#Imprimir o valor numero 1
#hashes[:a]


# EACH: passar por todo meu array

vetor = [1,2,7,8,9,3,4,5]

vetor.each do |i|
    puts i
end

#Operadores de intervalo

(1...5).each do |i|
    puts i
    end

    (1..5).each do |i|
        puts i
        end
=end

#Times
5.times{puts "Valeria"}
    