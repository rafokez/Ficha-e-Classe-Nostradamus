require_relative 'personagens'
require_relative 'classes'
require_relative 'ficha'

puts "Bem vindo à criação de personagem!"

# Solicitar informações do jogador
print "Digite o nome do personagem:"
nome = gets.chomp

print "Digite a idade do personagem:"
idade = gets.chomp.to_i

print "Digite a altura do personagem (em cm):"
altura = gets.chomp.to_f

print "Digite o peso do seu personagem: "
peso = gets.chomp.to_f

personagem_escolhido = escolher_classe

# Criar a ficha do personagem
ficha = Ficha.new(nome, idade, altura, peso, personagem_escolhido)

# Mostrar a ficha do personagem
ficha.mostrar_ficha 