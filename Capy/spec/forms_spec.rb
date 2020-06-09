describe 'Forms' do

    it 'login com sucesso' do

        visit 'http://training-wheels-protocol.herokuapp.com/login' # Visita a URL 

        fill_in 'userId', with: 'stark'      # Preenche informações no elemento selecionado [pode-se procurar por name ou id]
        fill_in 'password', with: 'jarvis!'  #    ''         ''     ''    ''        '' 
 
        click_button 'Login' # Clica no elemento selecionado

        expect(find('#flash').visible?).to be true # Procura pelo elemento e verifica se está visível
    
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' # Checa se uma String contém outra
        
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' # Checa se o elemento contém a String
    end

end