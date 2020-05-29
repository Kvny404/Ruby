# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque tudo são objetos [classes, métodos, variaveis]

# Classe -> Forma de organizar Características(Atributos) e Ações(Métodos) de objetos do mundo real

class Carro 
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end
end

fusion = Carro.new
fusion.nome = 'Fusion'

puts fusion.nome
fusion.ligar
