
RSpec.describe Granja do
  describe Datos do

    before :each do
      @uno    = Datos.new(1,"Granja familia",:avicola,"Muy bonita")
      @dos    = Datos.new(100, "Granja R", :ganadera, "Muy fea")
      @tres   = Datos.new("Granja Sur", "Granja Sur", :avicola, "Grande")
      @cuatro = Datos.new("Granja Pepe", "Granja Pepe", :ganadera, "Horrible")
    end

    context "Atributos de la clase Datos" do
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
        expect(@uno.tipo).to eq(:avicola)
        expect(@dos.tipo).to eq(:ganadera)
        expect(@tres.tipo).to eq(:avicola)
        expect(@cuatro.tipo).to eq(:ganadera)
      end
  
      it "Tiene un atributo para la descripcion de la granja" do
        expect(@uno.descripcion).to eq("Muy bonita")
        expect(@dos.descripcion).to eq("Muy fea")
        expect(@tres.descripcion).to eq("Grande")
        expect(@cuatro.descripcion).to eq("Horrible")
      end
  
      it ".to_s de la clase Datos" do
        expect(@uno.to_s).to eq("La identificacion de la granja es: 1, su nombre es: Granja familia, su tipo es: avicola y su descripción es: Muy bonita")
        expect(@dos.to_s).to eq("La identificacion de la granja es: 100, su nombre es: Granja R, su tipo es: ganadera y su descripción es: Muy fea")
        expect(@tres.to_s).to eq("La identificacion de la granja es: Granja Sur, su nombre es: Granja Sur, su tipo es: avicola y su descripción es: Grande")
        expect(@cuatro.to_s).to eq("La identificacion de la granja es: Granja Pepe, su nombre es: Granja Pepe, su tipo es: ganadera y su descripción es: Horrible")
      end
    end


    context "Herencia de la clase Datos" do
      it "Se espera que una instancia de la clase Datos sea un Datos" do
        expect(@uno).to be_a_kind_of(Datos)
        expect(@dos).to be_a_kind_of(Datos)
        expect(@tres.is_a? Datos).to eq(true)
        expect(@cuatro.is_a? Datos).to eq(true)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto (Object)" do
        expect(@uno).to be_a_kind_of(Object)
        expect(@dos).to be_a_kind_of(Object)
        expect(@tres.is_a? Object).to eq(true)
        expect(@cuatro.is_a? Object).to eq(true)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto basico (BasicObject)" do
        expect(@uno).to be_a_kind_of(BasicObject)
        expect(@dos).to be_a_kind_of(BasicObject)
        expect(@tres.is_a? BasicObject).to eq(true)
        expect(@cuatro.is_a? BasicObject).to eq(true)
      end
      it "No se espera que una instancia de la clase Datos sea una cadena (String)" do
        expect(@uno).not_to be_a_kind_of(String)
        expect(@dos).not_to be_a_kind_of(String)
        expect(@tres.is_a? String).to eq(false)
        expect(@cuatro.is_a? String).to eq(false)
      end
      it "No se espera que una instancia de la clase Datos sea un numero (Numeric)" do
        expect(@uno).not_to be_a_kind_of(Numeric)
        expect(@dos).not_to be_a_kind_of(Numeric)
        expect(@tres.is_a? Numeric).to eq(false)
        expect(@cuatro.is_a? Numeric).to eq(false)                
      end
    end
  end
end
