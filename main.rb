require_relative 'personagens'
require_relative 'classes'

#╭───────╯•╰───────╮
def escolher_classe
    puts "Escolha uma classe: Arqueiro / Espadachim / Tank"
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
#╰───────╮•╭───────╯

puts "⟥────────────✤────────────⟤"
puts "Bem vindo ao RPG Nostradamus!"
puts "⟥────────────✤────────────⟤"
sleep(2)
puts "Primeiramente, escolha sua classe!"
personagem_escolhido = escolher_classe

#╭───────╯•╰───────╮
def mostrar_classe(personagem)
    puts "Você escolheu a classe #{personagem.class}"
    puts "Vida: #{personagem.vida}"
    puts "Mana: #{personagem.mana}"
    puts "Itens: #{personagem.itens.join(', ')}"
    puts "Equipamentos: #{personagem.equipamentos.join(', ')}"
end
#╰───────╮•╭───────╯

mostrar_classe(personagem_escolhido)

# Menu Principal
loop do
    puts "==========================="
    puts "|  \e[31mNostradamus\e[0m              |"
    puts "==========================="
    puts "|1. Progredir na história |"
    puts "|2. Status                |"
    puts "|3. Diário                |"
    puts "|4. Ficha                 |"
    puts "|5. Sair                  |"
    puts "==========================="
    escolhamenu = gets.chomp.to_i

  # Início do case de Menu

    case escolhamenu

  #Modo História

    when 1
      historia_parte_um

  #Status

    when 2
      mostrar_classe(personagem_escolhido)
      puts "Clique ENTER para voltar."
      gets.chomp

  #Diário

  when 3
    puts  "=========================================================================================="
    puts  "Seu diário"
    puts  "=========================================================================================="
    
    puts  "==========================================================================================\n\n\n"


  when 4
    "template"
  when 5
    puts "\e[35m(Rei Arthur)\e[0m ~ \e[33m \e[3mLhe espero na sala principal amanhã, guerreiro. Tenha um bom descanso.\e[0m \e[35m#...\e[0m\e[0m\n"
    sleep(2.5)
    break
  else
    puts "Opção inválida! Escolha de 1 a 5."
  end
end
