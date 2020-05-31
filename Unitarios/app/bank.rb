class Conta 
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo 
    end
    def saca(valor, max, tax)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque'
        elsif(valor > 700.00)
            self.mensagem = 'Limite máximo é de R$' + max.to_s   
        else    
            self.saldo -= valor + tax
        end
    end
end


class ContaCorrente < Conta
    def saca(valor, max = 700, tax = 5.00)
        super
    end
end

class ContaPoupanca < Conta
    def saca(valor, max = 500, tax = 2.00)
        super
    end 
end