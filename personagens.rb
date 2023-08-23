# personagens.rb

class Personagem
    attr_accessor :vida, :mana, :itens, :equipamentos
    
    def initialize(vida, mana)
      @vida = vida
      @mana = mana
      @itens = ['Maçã']
      @equipamentos = []
    end
  end
  
  class Arqueiro < Personagem
    def initialize
      super(25, 12)
      @equipamentos << 'Arco'
    end
  end
  
  class Espadachim < Personagem
    def initialize
      super(35, 10)
      @equipamentos << 'Katana'
    end
  end
  
  class Tank < Personagem
    def initialize
      super(50, 5)
      @equipamentos << 'Machado'
    end
  end