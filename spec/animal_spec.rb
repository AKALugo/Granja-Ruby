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
                expect(Animal.new()).not_to be(nil)
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
            it "Se obtiene una cadena con la informaci´on del animal correctamente formateada" do
                expect(@uno.to_s).to eq("El animal 1 de 400 dias de vida es macho con un peso de 9000 gramos")
                expect(@dos.to_s).to eq("El animal 2 de 10 dias de vida es hembra con un peso de 2000 gramos")
                expect(@tres.to_s).to eq("El animal 3 de 333 dias de vida es macho con un peso de 5033 gramos")
                expect(@cuatro.to_s).to eq("El animal 50 de 1001 dias de vida es hembra con un peso de 8888 gramos")
            end
            it "Contador de objetos de la clase Animal" do
                expect(Animal.contador).to eq(29)
            end
        end


        context "Herencia de la Animal" do
            it "Se espera que una instancia de la clase Animal sea un Animal" do
                expect(@uno.is_a? Animal).to eq(true)
                expect(@dos.is_a? Animal).to eq(true)
                expect(@tres.is_a? Animal).to eq(true)
                expect(@cuatro.is_a? Animal).to eq(true)
            end
            it "Se espera que una instancia de la clase Animal sea un objeto (Object)" do
                expect(@uno.is_a? Object).to eq(true)
                expect(@dos.is_a? Object).to eq(true)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Animal sea un objeto basico (BasicObject)" do
                expect(@uno.is_a? BasicObject).to eq(true)
                expect(@dos.is_a? BasicObject).to eq(true)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Animal sea una cadena (String)" do
                expect(@uno.is_a? String).to eq(false)
                expect(@dos.is_a? String).to eq(false)
                expect(@tres.is_a? String).to eq(false)
                expect(@cuatro.is_a? String).to eq(false)
            end
            it "No se espera que una instancia de la clase Animal sea un numero (Numeric)" do
                expect(@uno.is_a? Numeric).to eq(false)
                expect(@dos.is_a? Numeric).to eq(false)
                expect(@tres.is_a? Numeric).to eq(false)
                expect(@cuatro.is_a? Numeric).to eq(false)                
            end
        end

        
        context "Comparable" do
            it "Animal1 < Animal2" do
                expect(@dos < @uno).to eq(true)
                expect(@tres < @cuatro).to eq(true)
            end
            it "Animal1 <= Animal2" do
                expect(@dos <= @uno).to eq(true)
                expect(@tres <= @cuatro).to eq(true)
            end
            it "Animal1 == Animal2" do
                expect(@uno == @dos).to eq(false)
                expect(@cuatro == @tres).to eq(false)
            end
            it "Animal1 > Animal2" do
                expect(@uno > @dos).to eq(true)
                expect(@cuatro > @tres).to eq(true)
            end
            it "Animal1 >= Animal2" do
                expect(@uno >= @dos).to eq(true)
                expect(@cuatro >= @tres).to eq(true)
            end
        end
    end
end