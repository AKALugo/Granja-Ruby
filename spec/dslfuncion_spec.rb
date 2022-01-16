RSpec.describe Granja do
    describe Granja::DSLFuncionalidad do

        before :each do
            granja1 = Granja::DSLGranja.new(12345678) do
                datos "Pollos muertos",
                :descripcion => "PyME - Pequena y mediana empresa",
                :tipo => :pollos
                ejemplar "12345678-00000001",
                :edad => 365,
                :peso => 43.2,
                :precio_compra => 4.25,
                :precio_venta => 49.75
                ejemplar "12345678-00000002",
                :edad => 465,
                :peso => 62.2,
                :precio_compra => 1.25,
                :precio_venta => 59.75
            end
            granja2 = Granja::DSLGranja.new(18) do
                datos "Pollos duros",
                :descripcion => "Granja familiar",
                :tipo => :pollos
                ejemplar "18-01",
                :edad => 30,
                :peso => 70.2,
                :precio_compra => 5.25,
                :precio_venta => 45.75
                ejemplar "18-02",
                :edad => 46,
                :peso => 120.2,
                :precio_compra => 2.25,
                :precio_venta => 51.75
            end
            granja3 = Granja::DSLGranja.new(500) do
                datos "Pollos buenos",
                :descripcion => "Granja española",
                :tipo => :pollos
                ejemplar "500-01",
                :edad => 35,
                :peso => 75.2,
                :precio_compra => 2.25,
                :precio_venta => 3.75
                ejemplar "500-02",
                :edad => 89,
                :peso => 102.2,
                :precio_compra => 1.25,
                :precio_venta => 4.75
            end

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
            it "Tiene un metodo para calcular el bienestar de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:bienestar)).to eq(true)
            end
            it "Tiene un metodo para calcular la productividad de una granja" do
                expect(Granja::DSLFuncionalidad.method_defined?(:productividad)).to eq(true)
            end
            it "Se obtiene una cadena con la informacion de las funcionalidades correctamente formateada" do
                expect(@funcionalidad1.to_s).to eq("La granja 12345678 tiene un beneficio de 98.67%, su bienestar es de 95 y su productividad es de 3")
                expect(@funcionalidad2.to_s).to eq("La granja 18 tiene un beneficio de 47.27%, su bienestar es de 48 y su productividad es de 2")
                expect(@funcionalidad3.to_s).to eq("La granja 500 tiene un beneficio de 2.82%, su bienestar es de 39 y su productividad es de 1")
            end
        end

    end
end