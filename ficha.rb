# ficha.rb

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