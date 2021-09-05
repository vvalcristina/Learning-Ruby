variavel="Val"

puts "Ola " + variavel

#Forma de concatenação que não modifica o objeto
puts "Ola " << variavel

#Concatenar variáveis de tipos diferentes

variavel_inteiro =10
variavel_string ="Total é "

puts "#{variavel_string} #{variavel_inteiro}"