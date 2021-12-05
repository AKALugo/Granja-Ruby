
RSpec.describe Granja do
  describe Funcion do
  
    context "Componentes del modulo Funcion" do
      it "Existe un modulo para almacenar las funcionalidades" do
        expect(Funcion).not_to eq(nil)
      end
      it "Existe una constante para representar las condiciones de vida (campo abierto, establo)" do
        expect(Funcion::CONDICIONES_DE_VIDA).to eq("establo")
      end
      it "Existe un procedimiento para establecer los cuidados de los animales" do
        expect(Funcion.cuidados(1)).to eq("Cuidados intensivos")
        expect(Funcion.cuidados(0)).to eq("Cuidados leves")
      end
      it "Existe un procedimiento para establecer la reproduccion de los animales" do
        expect(Funcion.reproduccion(1)).to eq("Época reproductiva")
        expect(Funcion.reproduccion(0)).to eq("Época no reproductiva")
      end
    end


    context "Herencia del modulo Funcion" do
      it "Se espera que sea un objeto de la clase Module" do
        expect(Funcion.is_a? Module).to eq(true)
      end
      it "Se espera que sea un objeto (Object)" do
        expect(Funcion.is_a? Object).to eq(true)
      end
      it "Se espera que sea un objeto basico (BasicObject)" do
        expect(Funcion.is_a? BasicObject).to eq(true)
      end
      it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
        expect(Funcion.is_a? String).to eq(false)
      end
      it "No se espera que sea una instancia de la clase que representa un numero (Numeric)" do
        expect(Funcion.is_a? Numeric).to eq(false) 
      end
    end
  end
end
