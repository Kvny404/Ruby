require_relative '../app/bank'

describe ContaCorrente do
    
    describe 'Saque' do
        context 'quando valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'E o saldo continua zerado' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'meu saldo permanece zerado' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'quando ultrapassa o limite de saque' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(701.00)
            end
            it 'então exibe mensagem' do
                expect(@conta.mensagem).to eql 'Limite máximo é de R$700'
            end
            it 'E o saldo permanece' do
                expect(@conta.saldo).to eql @conta.saldo
            end
        end
    end 
end

# O '@' serve para tornar a variável 'conta' de uma váriavel de contexto
# para uma variável de instância 

# rspec -fd -> fd de 'Formated Documentation', printa as descriptions de cada cenário
# destacando os casos de cada contexto em verda caso passem e apontando em vermelho em caso de falha
