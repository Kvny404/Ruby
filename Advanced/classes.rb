class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais para o cliente #{self.nome}" # Interpolação de valores
    end
end

c = Conta.new('Keveny')

c.deposita(107.47)
puts c.saldo

c.deposita(17.40)
puts c.saldo
