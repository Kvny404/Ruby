# begin 
#     # Devo tentar algo
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue Exception => e 
#     # Obter possível erro
#     puts e  -> printa a exceção
#     puts e.message -> printa a mensagem da exceção
#     puts e.backtrace -> printa o trace do erro

# end

def soma(n1, n2)
    n1 + n2
rescue Exception => e 
    #puts e.message
    puts 'Erro na soma dos valores.' 
end

soma('10', 5)