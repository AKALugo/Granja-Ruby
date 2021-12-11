RSpec.describe Granja do
    describe Avicola do


        before :each do
            @uno    = Avicola.new
            @dos    = Avicola.new
            @tres   = Avicola.new
            @cuatro = Avicola.new
        end


        context "Herencia de la clase Avicola" do
            it "Se espera que una instancia de la clase Avicola sea una granja Avicola" do
                expect(@uno).to be_a_kind_of(Avicola)
                expect(@dos).to be_a_kind_of(Avicola)
                expect(@tres.is_a? Avicola).to eq(true)
                expect(@cuatro.is_a? Avicola).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un Dato" do
                expect(@uno).to be_a_kind_of(Datos)
                expect(@dos).to be_a_kind_of(Datos)
                expect(@tres.is_a? Datos).to eq(true)
                expect(@cuatro.is_a? Datos).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un objeto (Object)" do
                expect(@uno).to be_a_kind_of(Object)
                expect(@dos).to be_a_kind_of(Object)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un objeto basico (BasicObject)" do
                expect(@uno).to be_a_kind_of(BasicObject)
                expect(@dos).to be_a_kind_of(BasicObject)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Avicola sea un Animal" do
                expect(@uno).not_to be_a_kind_of(Animal)
                expect(@dos).not_to be_a_kind_of(Animal)
                expect(@tres.is_a? Animal).to eq(false)
                expect(@cuatro.is_a? Animal).to eq(false)
            end
            it "No se espera que una instancia de la clase Avicola sea un Ave" do
                expect(@uno).not_to be_a_kind_of(Ave)
                expect(@dos).not_to be_a_kind_of(Ave)
                expect(@tres.is_a? Ave).to eq(false)
                expect(@cuatro.is_a? Ave).to eq(false)   
            end
        end
    end
end