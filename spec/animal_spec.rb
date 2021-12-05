RSpec.describe Granja do
    describe Animal do
        
        before :each do
            @uno    = Animal.new(1, 400, "macho", 9000)
            @dos    = Animal.new(2, 10, "hembra", 2000)
            @tres   = Animal.new(3, 333, "macho", 5033)
            @cuatro = Animal.new(50, 1001, "hembra", 8888)
        end


        context "Atributos de la clase Animal" do
            it "Tiene una clase para representar animales" do
                expect(Animal.new()).not_to eq(nil)
            end

            it "Tiene un atributo para identificar al animal" do
                expect(@uno.identificador).to eq(1)
                expect(@dos.identificador).to eq(2)
                expect(@tres.identificador).to eq(3)
                expect(@cuatro.identificador).to eq(50)
            end
            it "Tiene un atributo con la edad del animal en dıas" do
                expect(@uno.edad).to eq(400)
                expect(@dos.edad).to eq(10)
                expect(@tres.edad).to eq(333)
                expect(@cuatro.edad).to eq(1001)
            end
            it "Tiene un atributo con el sexo del animal" do
                expect(@uno.sexo).to eq("macho")
                expect(@dos.sexo).to eq("hembra")
                expect(@tres.sexo).to eq("macho")
                expect(@cuatro.sexo).to eq("hembra")
            end
            it "Tiene un atributo con el peso del animal en gramos" do
                expect(@uno.peso).to eq(9000)
                expect(@dos.peso).to eq(2000)
                expect(@tres.peso).to eq(5033)
                expect(@cuatro.peso).to eq(8888)
            end
        end


        context "Herencia de la Animal" do

        end 
    end
end