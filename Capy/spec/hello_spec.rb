

describe "Meu primeiro Script" do
    it "visitar a página" do
        visit "http://training-wheels-protocol.herokuapp.com/"
        puts page.title
        expect(page.title).to eql "Training Wheels Protocol"
    end
end