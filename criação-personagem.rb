require_relative 'personagens'
require_relative 'classes'

puts "Bem vindo à criação de personagem!"

# Solicitar informações do jogador
print "Digite o nome do personagem:"
nome = gets.chomp

print "Digite a idade do personagem:"
idade = gets.chomp.to_i

print "Digite a altura do personagem (em cm):"
altura = gets.chomp.to_i

print "Digite o peso do seu personagem: "
peso = gets.chomp.to_f

personagem_escolhido = escolher_classe

class Ficha
    attr_accessor :nome, :idade, :altura, :peso, :personagem
  
    def initialize(nome, idade, altura, peso, personagem)
      @nome = nome
      @idade = idade
      @altura = altura
      @peso = peso
      @personagem = personagem
    end
  
    def mostrar_ficha
      puts "\nFicha do Personagem:"
      puts "Nome: #{@nome}"
      puts "Idade: #{@idade} anos"
      puts "Altura: #{@altura} cm"
      puts "Peso: #{@peso} kg"
      puts "Classe: #{@personagem.class}"
      puts "Vida: #{@personagem.vida}"
      puts "Mana: #{@personagem.mana}"
      puts "Itens: #{personagem.itens.join(', ')}"
      puts "Equipamento: #{personagem.equipamentos.join(', ')}"
      puts "Reputação: Regular"
    end
  end
