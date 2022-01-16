RSpec.describe Granja do
    describe Granja::DSLGranja do

        before :each do
            @granja1 = Granja::DSLGranja.new(12345678) do
                datos "Pollos muertos",
                :descripcion => "PyME - Pequena y mediana empresa",
                :tipo => :pollos
                ejemplar "12345678-00000001",
                :edad => 365,
                :peso => 700.2,
                :precio_compra => 4.25,
                :precio_venta => 4.75
                ejemplar "12345678-00000002",
                :edad => 465,
                :peso => 1200.2,
                :precio_compra => 1.25,
                :precio_venta => 2.75
            end
            @granja2 = Granja::DSLGranja.new(18) do
                datos "Pollos duros",
                :descripcion => "Granja familiar",
                :tipo => :pollos
                ejemplar "18-01",
                :edad => 30,
                :peso => 70.2,
                :precio_compra => 5.25,
                :precio_venta => 5.75
                ejemplar "18-02",
                :edad => 46,
                :peso => 120.2,
                :precio_compra => 2.25,
                :precio_venta => 3.75
            end
            @granja3 = Granja::DSLGranja.new(500) do
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
        end


        context "Atributos de la clase DSLGranja" do
            it "Tiene una clase para almacenar los datos de la granja" do
                expect(Granja::DSLGranja.new()).not_to be(nil)
            end
            it "Tiene un metodo para los datos" do
                expect(Granja::DSLGranja.method_defined?(:datos)).to eq(true)
            end
            it "Tiene una variable para los datos" do
                expect(@granja1.dato).to eq([12345678, "Pollos muertos", "PyME - Pequena y mediana empresa", :pollos])
                expect(@granja2.dato).to eq([18, "Pollos duros", "Granja familiar", :pollos])
                expect(@granja3.dato).to eq([500, "Pollos buenos", "Granja española", :pollos])
            end
            it "Tiene un metodo para los ejemplares" do
                expect(Granja::DSLGranja.method_defined?(:ejemplar)).to eq(true)
            end
            it "Tiene una variable para los ejemplares" do
                expect(@granja1.ejemplares).to eq([["12345678-00000001", 365, 700.2, 4.25, 4.75], ["12345678-00000002", 465, 1200.2, 1.25, 2.75]])
                expect(@granja2.ejemplares).to eq([["18-01", 30, 70.2, 5.25, 5.75], ["18-02", 46, 120.2, 2.25, 3.75]])
                expect(@granja3.ejemplares).to eq([["500-01", 35, 75.2, 2.25, 3.75], ["500-02", 89, 102.2, 1.25, 4.75]])
            end
            it "Se obtiene una cadena con la informacion de la granja correctamente formateada" do
                expect(@granja1.to_s).to eq("DSLGranja:\nLa granja 12345678 de nombre Pollos muertos, cuya descripcion es PyME - Pequena y mediana empresa y su animal es pollos\n\nEjemplar 1:\nSu identificador es 12345678-00000001, su edad es 365, su peso es 700.2, su precio de compra es 4.25 y su precio de venta es 4.75\nEjemplar 2:\nSu identificador es 12345678-00000002, su edad es 465, su peso es 1200.2, su precio de compra es 1.25 y su precio de venta es 2.75\n")
                expect(@granja2.to_s).to eq("DSLGranja:\nLa granja 18 de nombre Pollos duros, cuya descripcion es Granja familiar y su animal es pollos\n\nEjemplar 1:\nSu identificador es 18-01, su edad es 30, su peso es 70.2, su precio de compra es 5.25 y su precio de venta es 5.75\nEjemplar 2:\nSu identificador es 18-02, su edad es 46, su peso es 120.2, su precio de compra es 2.25 y su precio de venta es 3.75\n")
                expect(@granja3.to_s).to eq("DSLGranja:\nLa granja 500 de nombre Pollos buenos, cuya descripcion es Granja española y su animal es pollos\n\nEjemplar 1:\nSu identificador es 500-01, su edad es 35, su peso es 75.2, su precio de compra es 2.25 y su precio de venta es 3.75\nEjemplar 2:\nSu identificador es 500-02, su edad es 89, su peso es 102.2, su precio de compra es 1.25 y su precio de venta es 4.75\n")
            end
        end

    end
end