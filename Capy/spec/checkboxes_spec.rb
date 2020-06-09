describe 'Caixas de seleção', :checkbox do

    before(:each) do # gancho do rspec, antes de cada cenário, visitar a página setada
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor') # marca um elemento 'checkbox' através do name ou id
    end

    it 'desmarcando uma opção' do
        uncheck('antman') # desmarca um elemento do tipo input através do name ou id
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true) # Procura o elemento do tipo input e seta o elemento como true (marca o elemento)
    end

    it 'desmarcando com find set true' do
        find('input[value=guardians]').set(false) # Procura o elemento do tipo input e seta o elemento como false (desmarca o elemento)
    end

    after(:each) do # gancho rspec, após cada cenário, esperar 3 segundos
        sleep 3
    end
end