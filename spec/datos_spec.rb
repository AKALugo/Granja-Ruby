
RSpec.describe Granja do
  describe Datos do

    before :each do
      @uno    = Datos.new(1,"Granja familia","Cerdos","Muy bonita")
      @dos    = Datos.new(100, "Granja R", "Vaca", "Muy fea")
      @tres   = Datos.new("Granja Sur", "Granja Sur", "Pollos", "Grande")
      @cuatro = Datos.new("Granja Pepe", "Granja Pepe", "Gallinas", "Horrible")
    end

    it "Tiene una clase para almacenar los dato de la granja" do
      expect(Datos.new()).not_to eq(nil)
    end

    it "Tiene un atributo para la identificar la granja" do
      expect(@uno.identificacion).to eq(1)
      expect(@dos.identificacion).to eq(100)
      expect(@tres.identificacion).to eq("Granja Sur")
      expect(@cuatro.identificacion).to eq("Granja Pepe")
    end

    it "Tiene un atributo para el nombre de la granja" do
      expect(@uno.nombre).to eq("Granja familia")
      expect(@dos.nombre).to eq("Granja R")
      expect(@tres.nombre).to eq("Granja Sur")
      expect(@cuatro.nombre).to eq("Granja Pepe")
    end

    it "Tiene un atributo para el tipo de la granja" do
      expect(@uno.tipo).to eq("Cerdos")
      expect(@dos.tipo).to eq("Vaca")
      expect(@tres.tipo).to eq("Pollos")
      expect(@cuatro.tipo).to eq("Gallinas")
    end

    it "Tiene un atributo para la descripci´on de la granja" do
      expect(@uno.descripcion).to eq("Muy bonita")
      expect(@dos.descripcion).to eq("Muy fea")
      expect(@tres.descripcion).to eq("Grande")
      expect(@cuatro.descripcion).to eq("Horrible")
    end

    it ".to_s de la clase Datos" do
      expect(@uno.to_s).to eq("La identificacion de la clase es: 1\nEl nombre de la granja es: Granja familia\nEl tipo de granja es: Cerdos\nLa descripcion de la granja es: Muy bonita")
      expect(@dos.to_s).to eq("La identificacion de la clase es: 100\nEl nombre de la granja es: Granja R\nEl tipo de granja es: Vaca\nLa descripcion de la granja es: Muy fea")
      expect(@tres.to_s).to eq("La identificacion de la clase es: Granja Sur\nEl nombre de la granja es: Granja Sur\nEl tipo de granja es: Pollos\nLa descripcion de la granja es: Grande")
      expect(@cuatro.to_s).to eq("La identificacion de la clase es: Granja Pepe\nEl nombre de la granja es: Granja Pepe\nEl tipo de granja es: Gallinas\nLa descripcion de la granja es: Horrible")
    end
  end
end
