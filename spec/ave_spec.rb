RSpec.describe Granja do
    describe Granja::Ave do
    
        before :each do
            @uno    = Granja::Ave.new(1, 10, :macho, 900.1, :corto, :anisodactilas, :corredoras)
            @dos    = Granja::Ave.new(2, 400, :hembra, 200.2, :grueso_y_robusto, :palmeadas, :voladoras)
            @tres   = Granja::Ave.new(3, 333, :macho, 503.3, :ancho_y_aplanado, :anisodactilas, :nadadoras)
            @cuatro = Granja::Ave.new(50, 1001, :hembra, 888.8, :corto, :palmeadas, :corredoras)
        end


        context "Atributos de la clase Ave" do
            it "Tiene una clase para representar aves" do
                expect(@uno).not_to be(nil)
                expect(@dos).not_to be(nil)
                expect(@tres).not_to be(nil)
                expect(@cuatro).not_to be(nil)
            end
            it "Tiene un atributo para el tipo de pico (corto, grueso y robusto o ancho y aplanado)" do
                expect(@uno.pico).to eq(:corto)
                expect(@dos.pico).to eq(:grueso_y_robusto)
                expect(@tres.pico).to eq(:ancho_y_aplanado)
                expect(@cuatro.pico).to eq(:corto)
            end 
            it "Tiene un atributo para el tipo de las patas (anisodactilas o palmeadas)" do
                expect(@uno.patas).to eq(:anisodactilas)
                expect(@dos.patas).to eq(:palmeadas)
                expect(@tres.patas).to eq(:anisodactilas)
                expect(@cuatro.patas).to eq(:palmeadas)
            end
            it "Tiene un atributo para su tipo de movilidad (corredoras, voladoras o nadadoras)" do
                expect(@uno.movilidad).to eq(:corredoras)
                expect(@dos.movilidad).to eq(:voladoras)
                expect(@tres.movilidad).to eq(:nadadoras)
                expect(@cuatro.movilidad).to eq(:corredoras)
            end
            it "Se obtiene una cadena con la informacion del ave correctamente formateada" do
                expect(@uno.to_s).to eq("La ave tiene un pico corto, unas patas anisodactilas y pertenece al grupo de aves corredoras")
                expect(@dos.to_s).to eq("La ave tiene un pico grueso_y_robusto, unas patas palmeadas y pertenece al grupo de aves voladoras")
                expect(@tres.to_s).to eq("La ave tiene un pico ancho_y_aplanado, unas patas anisodactilas y pertenece al grupo de aves nadadoras")
                expect(@cuatro.to_s).to eq("La ave tiene un pico corto, unas patas palmeadas y pertenece al grupo de aves corredoras")
            end
        end


        context "Herencia de la clase Ave" do
            it "Se espera que una instancia de la clase Ave sea un Ave" do
                expect(@uno).to be_a_kind_of(Granja::Ave)
                expect(@dos).to be_a_kind_of(Granja::Ave)
                expect(@tres.is_a? Granja::Ave).to eq(true)
                expect(@cuatro.is_a? Granja::Ave).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un Animal" do
                expect(@uno).to be_a_kind_of(Granja::Animal)
                expect(@dos).to be_a_kind_of(Granja::Animal)
                expect(@tres.is_a? Granja::Animal).to eq(true)
                expect(@cuatro.is_a? Granja::Animal).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un objeto (Object)" do
                expect(@uno).to be_a_kind_of(Object)
                expect(@dos).to be_a_kind_of(Object)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un objeto basico (BasicObject)" do
                expect(@uno).to be_a_kind_of(BasicObject)
                expect(@dos).to be_a_kind_of(BasicObject)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Ave sea una cadena (String)" do
                expect(@uno).not_to be_a_kind_of(String)
                expect(@dos).not_to be_a_kind_of(String)
                expect(@tres.is_a? String).to eq(false)
                expect(@cuatro.is_a? String).to eq(false)
            end
            it "No se espera que una instancia de la clase Ave sea un numero (Numeric)" do
                expect(@uno).not_to be_a_kind_of(Numeric)
                expect(@dos).not_to be_a_kind_of(Numeric)
                expect(@tres.is_a? Numeric).to eq(false)
                expect(@cuatro.is_a? Numeric).to eq(false)   
            end
            it "Se espera que una instancia de la clase Ave sea un Comparable" do
                expect(@uno).to be_a_kind_of(Comparable)
                expect(@dos).to be_a_kind_of(Comparable)
                expect(@tres).to be_a_kind_of(Comparable)
                expect(@cuatro).to be_a_kind_of(Comparable)
            end
        end


        context "Comparable" do
            it "Ave1 < Ave2" do
                expect(@uno < @dos).to eq(true)
                expect(@tres < @cuatro).to eq(true)
            end
            it "Ave1 <= Ave2" do
                expect(@uno <= @dos).to eq(true)
                expect(@tres <= @cuatro).to eq(true)
            end
            it "Ave1 == Ave2" do
                expect(@uno == @dos).to eq(false)
                expect(@cuatro == @tres).to eq(false)
            end
            it "Ave1 > Ave2" do
                expect(@dos > @uno).to eq(true)
                expect(@cuatro > @tres).to eq(true)
            end
            it "Ave1 >= Ave2" do
                expect(@dos >= @uno).to eq(true)
                expect(@cuatro >= @tres).to eq(true)
            end
        end
    end
end