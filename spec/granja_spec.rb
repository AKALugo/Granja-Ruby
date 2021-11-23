# frozen_string_literal: true

RSpec.describe Granja do
  it "Versión 0.1.0" do
    expect(Granja::VERSION).not_to be nil
  end

  describe Granja::Funcion do
    it "Tiene una clase para almacenar las funcionalidades" do
      expect(Granja::Funcion.new()).not_to eq(nil)
    end
    it "Tiene un atributo para las condiciones de vida de los animales" do
      expect(Granja::Funcion.new("Muy buena").condicion_de_vida_animal).to eq("Muy buena")
      expect(Granja::Funcion.new("Mala").condicion_de_vida_animal).to eq("Mala")
      expect(Granja::Funcion.new(10).condicion_de_vida_animal).to eq(10)
      expect(Granja::Funcion.new(5.4).condicion_de_vida_animal).to eq(5.4)
    end
    it "Tiene un atributo para los cuidados de los animanles" do
      expect(Granja::Funcion.new("","Buenos").cuidado_animal).to eq("Buenos")
      expect(Granja::Funcion.new("","Malos").cuidado_animal).to eq("Malos")
      expect(Granja::Funcion.new("",2).cuidado_animal).to eq(2)
      expect(Granja::Funcion.new("",3.6).cuidado_animal).to eq(3.6)
    end
    it "Tiene un atributo para la reproducción de los animales" do
      expect(Granja::Funcion.new("","","Lenta").reproduccion_animal).to eq("Lenta")
      expect(Granja::Funcion.new("","","Rapida").reproduccion_animal).to eq("Rapida")
      expect(Granja::Funcion.new("","",200).reproduccion_animal).to eq(200)
      expect(Granja::Funcion.new("","",0.5).reproduccion_animal).to eq(0.5)
    end
    it ".to_s de la clase Funcion" do
      expect(Granja::Funcion.new("Muy buena","Malos","10").to_s).to eq("La calidad de vida de los animales es: Muy buena\nLa calidad de los cuidados animales son: Malos\nLa calidad de la reproduccion es: 10")
    end
  end

  describe Granja::Datos do
    it "Tiene una clase para almacenar los dato de la granja" do
      expect(Granja::Datos.new()).not_to eq(nil)
    end
    it "Tiene un atributo para la identificar la granja" do 
      expect(Granja::Datos.new(1).identificacion).to eq(1)
      expect(Granja::Datos.new(100).identificacion).to eq(100)
      expect(Granja::Datos.new("Granja Sur").identificacion).to eq("Granja Sur")
      expect(Granja::Datos.new("Granja Pepe").identificacion).to eq("Granja Pepe")
    end
  end
end
