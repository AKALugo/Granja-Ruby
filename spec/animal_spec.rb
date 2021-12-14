RSpec.describe Granja do
    describe Granja::Animal do
        
        before :each do
            @uno    = Granja::Animal.new(1, 400, :macho, 900.1)
            @dos    = Granja::Animal.new(2, 10, :hembra, 200.2)
            @tres   = Granja::Animal.new(3, 333, :macho, 503.3)
            @cuatro = Granja::Animal.new(50, 1001, :hembra, 888.4)
        end


        context "Atributos de la clase Animal" do
            it "Tiene una clase para representar animales" do
                expect(Granja::Animal.new()).not_to be(nil)
            end

            it "Tiene un atributo para identificar al animal" do
                expect(@uno.identificador).to eq(1)
                expect(@dos.identificador).to eq(2)
                expect(@tres.identificador).to eq(3)
                expect(@cuatro.identificador).to eq(50)
            end
            it "Tiene un atributo con la edad del animal en dias" do
                expect(@uno.edad).to eq(400)
                expect(@dos.edad).to eq(10)
                expect(@tres.edad).to eq(333)
                expect(@cuatro.edad).to eq(1001)
            end
            it "Tiene un atributo con el sexo del animal" do
                expect(@uno.sexo).to eq(:macho)
                expect(@dos.sexo).to eq(:hembra)
                expect(@tres.sexo).to eq(:macho)
                expect(@cuatro.sexo).to eq(:hembra)
            end
            it "Tiene un atributo con el peso del animal en gramos" do
                expect(@uno.peso).to eq(900.1)
                expect(@dos.peso).to eq(200.2)
                expect(@tres.peso).to eq(503.3)
                expect(@cuatro.peso).to eq(888.4)
            end
            it "Se obtiene una cadena con la informacion del animal correctamente formateada" do
                expect(@uno.to_s).to eq("El animal 1 de 400 dias de vida es macho con un peso de 900.1 gramos")
                expect(@dos.to_s).to eq("El animal 2 de 10 dias de vida es hembra con un peso de 200.2 gramos")
                expect(@tres.to_s).to eq("El animal 3 de 333 dias de vida es macho con un peso de 503.3 gramos")
                expect(@cuatro.to_s).to eq("El animal 50 de 1001 dias de vida es hembra con un peso de 888.4 gramos")
            end
            it "Contador de objetos de la clase Animal" do
                expect(Granja::Animal.contador).to eq(29)
            end
        end


        context "Herencia de la Animal" do
            it "Se espera que una instancia de la clase Animal sea un Animal" do
                expect(@uno).to be_a_kind_of(Granja::Animal)
                expect(@dos).to be_a_kind_of(Granja::Animal)
                expect(@tres.is_a? Granja::Animal).to eq(true)
                expect(@cuatro.is_a? Granja::Animal).to eq(true)
            end
            it "Se espera que una instancia de la clase Animal sea un objeto (Object)" do
                expect(@uno).to be_a_kind_of(Object)
                expect(@dos).to be_a_kind_of(Object)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Animal sea un objeto basico (BasicObject)" do
                expect(@uno).to be_a_kind_of(BasicObject)
                expect(@dos).to be_a_kind_of(BasicObject)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Animal sea una cadena (String)" do
                expect(@uno).not_to be_a_kind_of(String)
                expect(@dos).not_to be_a_kind_of(String)
                expect(@tres.is_a? String).to eq(false)
                expect(@cuatro.is_a? String).to eq(false)
            end
            it "No se espera que una instancia de la clase Animal sea un numero (Numeric)" do
                expect(@uno).not_to be_a_kind_of(Numeric)
                expect(@dos).not_to be_a_kind_of(Numeric)
                expect(@tres.is_a? Numeric).to eq(false)
                expect(@cuatro.is_a? Numeric).to eq(false)                 
            end
            it "Se espera que una instancia de la clase Animal sea un Comparable" do
                expect(@uno).to be_a_kind_of(Comparable)
                expect(@dos).to be_a_kind_of(Comparable)
                expect(@tres).to be_a_kind_of(Comparable)
                expect(@cuatro).to be_a_kind_of(Comparable)
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