
describe 'Botões de Radio', :radio do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleção por Id' do
        choose('cap') # seleção de elemento input do tipo 'radio' pelo id
    end

    it 'seleção por find e css selector' do
        find('input[value=iron-man]').click
    end

    after(:each) do
        sleep 3
    end

end