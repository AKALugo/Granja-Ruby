
RSpec.describe Granja do
  describe Granja::Funcion do
  
    context "Componentes del modulo Funcion" do
      it "Existe un modulo para almacenar las funcionalidades" do
        expect(Granja::Funcion).not_to eq(nil)
      end
      it "Existe una constante para representar las condiciones de vida (campo abierto, establo)" do
        expect(Granja::Funcion::CONDICIONES_DE_VIDA_E).to eq(:campo_abierto)
        expect(Granja::Funcion::CONDICIONES_DE_VIDA_I).to eq(:jaula)
      end
      it "Existe un procedimiento para establecer los cuidados de los animales" do
        expect(Granja::Funcion.cuidados(10)).to eq("Se necesitan 10 antibióticos de forma semanal en la granja.")
        expect(Granja::Funcion.cuidados(50)).to eq("Se necesitan 50 antibióticos de forma semanal en la granja.")
      end
      it "Existe un procedimiento para establecer la reproduccion de los animales" do
        expect(Granja::Funcion.reproduccion(100)).to eq("Hay 100 animales preparados para la reproducción.")
        expect(Granja::Funcion.reproduccion(20)).to eq("Hay 20 animales preparados para la reproducción.")
      end
    end


    context "Herencia del modulo Funcion" do
      it "Se espera que sea un objeto de la clase Module" do
        expect(Granja::Funcion).to be_a_kind_of(Module)
      end
      it "Se espera que sea un objeto (Object)" do
        expect(Granja::Funcion).to be_a_kind_of(Object)
      end
      it "Se espera que sea un objeto basico (BasicObject)" do
        expect(Granja::Funcion.is_a? BasicObject).to eq(true)
      end
      it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
        expect(Granja::Funcion.is_a? String).to eq(false)
      end
      it "No se espera que sea una instancia de la clase que representa un numero (Numeric)" do
        expect(Granja::Funcion).not_to be_a_kind_of(Numeric) 
      end
    end
  end
end
