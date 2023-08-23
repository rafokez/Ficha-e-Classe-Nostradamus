# classes.rb

require_relative 'personagens'

def escolher_classe
  puts "Escolha uma classe: Arqueiro, Espadachim, Tank"
  escolha = gets.chomp.downcase
  
  case escolha
  when 'arqueiro'
    return Arqueiro.new
  when 'espadachim'
    return Espadachim.new
  when 'tank'
    return Tank.new
  else
    puts "Classe inválida! Escolha novamente."
    escolher_classe
  end
end