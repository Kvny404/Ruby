describe  'Upload', :upload do 

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arch.txt'
        @imagem = Dir.pwd + '/spec/fixtures/SSO.png'
    end

    it 'com arquivo txt' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arch.txt'
    end

    it 'de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/SSO.png'
    end

    after(:each) do
        sleep 3
    end

end