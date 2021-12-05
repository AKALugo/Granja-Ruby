RSpec.describe Granja do
    describe Ave do

        before :each do
            @uno    = Ave.new("corto", "anisodactilas", "corredoras")
            @dos    = Ave.new("grueso y robusto", "palmeadas", "voladoras")
            @tres   = Ave.new("ancho y aplanado", "anisodactilas", "nadadoras")
            @cuatro = Ave.new("corto", "palmeadas", "corredoras")
        end


        context "Atributos de la clase Ave" do
            it "Tiene una clase para representar aves" do
                expect(Ave.new()).not_to be(nil)
            end
            it "Tiene un atributo para el tipo de pico (corto, grueso y robusto o ancho y aplanado)" do
                expect(@uno.pico).to eq("corto")
                expect(@dos.pico).to eq("grueso y robusto")
                expect(@tres.pico).to eq("ancho y aplanado")
                expect(@cuatro.pico).to eq("corto")
            end 
            it "Tiene un atributo para el tipo de las patas (anisodactilas o palmeadas)" do
                expect(@uno.patas).to eq("anisodactilas")
                expect(@dos.patas).to eq("palmeadas")
                expect(@tres.patas).to eq("anisodactilas")
                expect(@cuatro.patas).to eq("palmeadas")
            end
            it "Tiene un atributo para su tipo de movilidad (corredoras, voladoras o nadadoras)" do
                expect(@uno.movilidad).to eq("corredoras")
                expect(@dos.movilidad).to eq("voladoras")
                expect(@tres.movilidad).to eq("nadadoras")
                expect(@cuatro.movilidad).to eq("corredoras")
            end
            it "Se obtiene una cadena con la informaci´on del ave correctamente formateada" do
                expect(@uno.to_s).to eq("La ave tiene un pico corto, unas patas anisodactilas y pertenece al grupo de aves corredoras")
                expect(@dos.to_s).to eq("La ave tiene un pico grueso y robusto, unas patas palmeadas y pertenece al grupo de aves voladoras")
                expect(@tres.to_s).to eq("La ave tiene un pico ancho y aplanado, unas patas anisodactilas y pertenece al grupo de aves nadadoras")
                expect(@cuatro.to_s).to eq("La ave tiene un pico corto, unas patas palmeadas y pertenece al grupo de aves corredoras")
            end
        end


        context "Herencia de la clase Ave" do
            it "Se espera que una instancia de la clase Ave sea un Ave" do
                expect(@uno.is_a? Ave).to eq(true)
                expect(@dos.is_a? Ave).to eq(true)
                expect(@tres.is_a? Ave).to eq(true)
                expect(@cuatro.is_a? Ave).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un Animal" do
                expect(@uno.is_a? Animal).to eq(true)
                expect(@dos.is_a? Animal).to eq(true)
                expect(@tres.is_a? Animal).to eq(true)
                expect(@cuatro.is_a? Animal).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un objeto (Object)" do
                expect(@uno.is_a? Object).to eq(true)
                expect(@dos.is_a? Object).to eq(true)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Ave sea un objeto basico (BasicObject)" do
                expect(@uno.is_a? BasicObject).to eq(true)
                expect(@dos.is_a? BasicObject).to eq(true)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Ave sea una cadena (String)" do
                expect(@uno.is_a? String).to eq(false)
                expect(@dos.is_a? String).to eq(false)
                expect(@tres.is_a? String).to eq(false)
                expect(@cuatro.is_a? String).to eq(false)
            end
            it "No se espera que una instancia de la clase Ave sea un n´umero (Numeric)" do
                expect(@uno.is_a? Numeric).to eq(false)
                expect(@dos.is_a? Numeric).to eq(false)
                expect(@tres.is_a? Numeric).to eq(false)
                expect(@cuatro.is_a? Numeric).to eq(false)  
            end
        end
    end
end