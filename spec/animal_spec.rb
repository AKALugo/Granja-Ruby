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
        end


        context "Herencia de la Animal" do

        end 
    end
end