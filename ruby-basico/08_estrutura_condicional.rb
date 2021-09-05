puts "Digite 1 ou 2: "
variavel = gets.to_i
=begin
#If, Elsif e Else
if variavel == 1
    puts "Valor igual a 1"
elsif variavel == 2
    puts "Valor é igual a 2"
else 
    puts "Valor não é igual a 1"
end
=end

#Unless
=begin
unless variavel==2
    puts "Condição Falsa"
else
    puts "Condição Verdadeira"
end
=end

case variavel
when 1
    puts 'Você digitou 1'
when 2
    puts 'Você digitou 2'
else
    puts 'Opção inválida'
end    