RSpec.describe Granja do
    describe Granja::DSLFuncionalidad do

        before :each do
            ganso1 = Granja::Ave.new(1, 300, :macho, 900.1, :corto, :anisodactilas, :corredoras)
            pollo1 = Granja::Ave.new(1, 2000, :hembra, 150.2, :grueso_y_robusto, :palmeadas, :voladoras)
            pato1  = Granja::Ave.new(1, 221, :macho, 503.3, :ancho_y_aplanado, :anisodactilas, :nadadoras)
            pato2  = Granja::Ave.new(2, 1590, :macho, 503.3, :ancho_y_aplanado, :anisodactilas, :nadadoras)

            granja1   = Granja::Avicola.new(1, "Granja Gansos", "Gansos de calidad", :gansos, :huevos, 1, 5.50, 301, [ganso1])
            granja2   = Granja::Avicola.new(2, "Granja Pollos", "Pollos de calidad", :pollos, :sacrificio, 1, 4.5, 31.50, [pollo1])
            granja3   = Granja::Avicola.new(3, "Granja Patos", "Patos de calidad", :patos, :huevos, 2, 31.50, 50, [pato1, pato2])

            @funcionalidad1 = Granja::DSLFuncionalidad.new(12345678) do
                beneficio granja1
                bienestar granja1, :condiciones => :campo
                productividad granja1, :condiciones => :campo
            end
            @funcionalidad2 = Granja::DSLFuncionalidad.new(18) do
                beneficio granja2
                bienestar granja2, :condiciones => :jaula
                productividad granja2, :condiciones => :jaula
            end  
            @funcionalidad3 = Granja::DSLFuncionalidad.new(500) do
                beneficio granja3
                bienestar granja3, :condiciones => :establo
                productividad granja3, :condiciones => :establo
            end              
        end


        context "Atributos de la clase DSLFuncionalidad" do
            it "Tiene una clase para almacenar los datos de la granja" do
                expect(Granja::DSLFuncionalidad.new()).not_to be(nil)
            end
            it "Tiene un metodo para calcular el beneficio de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:beneficio)).to eq(true)
            end
            it "Tiene un atributo para calcular el beneficio de una granja" do
                expect(@funcionalidad1.beneficios).to eq(98.5)
                expect(@funcionalidad2.beneficios).to eq(17.98)
                expect(@funcionalidad3.beneficios).to eq(2.04)
            end
            it "Tiene un metodo para calcular el bienestar de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:bienestar)).to eq(true)
            end
            it "Tiene un atributo para calcular el bienestar de una granja" do
                expect(@funcionalidad1.bienestar_animal).to eq(100)
                expect(@funcionalidad2.bienestar_animal).to eq(50)
                expect(@funcionalidad3.bienestar_animal).to eq(29)
            end
            it "Tiene un metodo para calcular la productividad de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:productividad)).to eq(true)
            end
            it "Tiene un atributo para calcular la productividad de una granja" do
                expect(@funcionalidad1.productividad_granja).to eq(3)
                expect(@funcionalidad2.productividad_granja).to eq(2)
                expect(@funcionalidad3.productividad_granja).to eq(1)
            end
            it "Se obtiene una cadena con la informacion de las funcionalidades correctamente formateada" do
                expect(@funcionalidad1.to_s).to eq("La granja 12345678 tiene un beneficio de 98.5%, su bienestar es de 100 y su productividad es de 3")
                expect(@funcionalidad2.to_s).to eq("La granja 18 tiene un beneficio de 17.98%, su bienestar es de 50 y su productividad es de 2")
                expect(@funcionalidad3.to_s).to eq("La granja 500 tiene un beneficio de 2.04%, su bienestar es de 29 y su productividad es de 1")
            end
        end

    end
end