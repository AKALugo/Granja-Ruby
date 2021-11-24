
RSpec.describe Granja do
  describe Funcion do
  
  before :each do
    @uno    = Funcion.new("Muy buena","Buenos","Lenta")
    @dos    = Funcion.new("Mala","Malos","Rapida")
    @tres   = Funcion.new(10,2,200)
    @cuatro = Funcion.new(5.4,3.6,0.5)
  end

    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Funcion.new()).not_to eq(nil)
    end

    it "Tiene un atributo para las condiciones de vida de los animales" do
      expect(@uno.condicion_de_vida_animal).to eq("Muy buena")
      expect(@dos.condicion_de_vida_animal).to eq("Mala")
      expect(@tres.condicion_de_vida_animal).to eq(10)
      expect(@cuatro.condicion_de_vida_animal).to eq(5.4)
    end

    it "Tiene un atributo para los cuidados de los animanles" do
      expect(@uno.cuidado_animal).to eq("Buenos")
      expect(@dos.cuidado_animal).to eq("Malos")
      expect(@tres.cuidado_animal).to eq(2)
      expect(@cuatro.cuidado_animal).to eq(3.6)
    end

    it "Tiene un atributo para la reproducción de los animales" do
      expect(@uno.reproduccion_animal).to eq("Lenta")
      expect(@dos.reproduccion_animal).to eq("Rapida")
      expect(@tres.reproduccion_animal).to eq(200)
      expect(@cuatro.reproduccion_animal).to eq(0.5)
    end

    it ".to_s de la clase Funcion" do
      expect(@uno.to_s).to eq("La calidad de vida de los animales es: Muy buena\nLa calidad de los cuidados animales son: Buenos\nLa calidad de la reproduccion es: Lenta")
      expect(@dos.to_s).to eq("La calidad de vida de los animales es: Mala\nLa calidad de los cuidados animales son: Malos\nLa calidad de la reproduccion es: Rapida")
      expect(@tres.to_s).to eq("La calidad de vida de los animales es: 10\nLa calidad de los cuidados animales son: 2\nLa calidad de la reproduccion es: 200")
      expect(@cuatro.to_s).to eq("La calidad de vida de los animales es: 5.4\nLa calidad de los cuidados animales son: 3.6\nLa calidad de la reproduccion es: 0.5")
    end
  end
end
