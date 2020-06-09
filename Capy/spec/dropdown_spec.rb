describe 'Caixa de seleção', :dropdown do # o valor :'xx' depois da vírgula é uma tag,  
                                          # usada para executão apenas suites de teste ligadas a essa tag
 
    it 'item específico simples' do
        
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        select('Loki', from: 'dropdown')
       
    end

    it 'item específico com find' do # esse cenário é uma alternativa caso o elemento tipo select não tenha id
        
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list') # Econtra o elemento através da classe
        drop.find('option', text: 'Scott Lang').select_option # Seleciona o elemento baseado no valor da String dentro das options 
    end

    it 'qualquer item', :sample do
        
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list') # Econtra o elemento através da classe
        drop.all('option').sample.select_option # Seleciona um elemento escolhido pelo .sample, dentro do array retornado pelo .all
    end

end