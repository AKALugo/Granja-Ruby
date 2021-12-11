RSpec.describe Granja do
    describe Avicola do


        before :each do
            @uno    = Avicola.new(:gansos, :huevos, 50, 10.50, 42)
            @dos    = Avicola.new(:pollos, :sacrificio, 100, 21, 31.50)
            @tres   = Avicola.new(:patos, :huevos, 150, 31.50, 21)
            @cuatro = Avicola.new(:pavos, :sacrificio, 200, 42, 10.50)
            @grupo  = [@uno, @dos, @tres, @cuatro]
        end


        context "Atributos de la clase Avicola" do
            it "Tiene una clase para almacenar los datos de la granja" do
                expect(Avicola.new()).not_to be(nil)
            end
            it "Tiene un atributo para el tipo de aves (gansos, pollos, patos, pavos)" do
                expect(@uno.ave).to eq(:gansos)
                expect(@dos.ave).to eq(:pollos)
                expect(@tres.ave).to eq(:patos)
                expect(@cuatro.ave).to eq(:pavos)
            end 
            it "Tiene un atributo para el destino de los animales (huevos, sacrificio)" do
                expect(@uno.destino).to eq(:huevos)
                expect(@dos.destino).to eq(:sacrificio)
                expect(@tres.destino).to eq(:huevos)
                expect(@cuatro.destino).to eq(:sacrificio)
            end
            it "Tiene un atributo para el numero de aves de la granja" do
                expect(@uno.numero).to eq(50)
                expect(@dos.numero).to eq(100)
                expect(@tres.numero).to eq(150)
                expect(@cuatro.numero).to eq(200)
            end
            it "Tiene un atributo para el precio unitario de los animales" do
                expect(@uno.precio_unidad).to eq(10.50)
                expect(@dos.precio_unidad).to eq(21)
                expect(@tres.precio_unidad).to eq(31.50)
                expect(@cuatro.precio_unidad).to eq(42)
            end
            it "Tiene un atributo para el precio de venta unitario de los animales" do
                expect(@uno.precio_venta_u).to eq(42)
                expect(@dos.precio_venta_u).to eq(31.50)
                expect(@tres.precio_venta_u).to eq(21)
                expect(@cuatro.precio_venta_u).to eq(10.50)
            end
            it "Tiene un atributo para almacenar las aves de la granja" do
                expect(@uno.almacen_animal).not_to eq(nil)
                expect(@dos.almacen_animal).not_to eq(nil)
                expect(@tres.almacen_animal).not_to eq(nil)
                expect(@cuatro.almacen_animal).not_to eq(nil)
            end
            it "Se obtiene una cadena con la informacion de la granja avicola correctamente formateada" do
                expect(@uno.to_s).to eq("La granja Avicola tiene como aves a los gansos, el destino de estas aves es huevos, en la granja hay 50 de aves, su precio por unidad es 10.5 y el precio de venta por unidad es 42")
                expect(@dos.to_s).to eq("La granja Avicola tiene como aves a los pollos, el destino de estas aves es sacrificio, en la granja hay 100 de aves, su precio por unidad es 21 y el precio de venta por unidad es 31.5")
                expect(@tres.to_s).to eq("La granja Avicola tiene como aves a los patos, el destino de estas aves es huevos, en la granja hay 150 de aves, su precio por unidad es 31.5 y el precio de venta por unidad es 21")
                expect(@cuatro.to_s).to eq("La granja Avicola tiene como aves a los pavos, el destino de estas aves es sacrificio, en la granja hay 200 de aves, su precio por unidad es 42 y el precio de venta por unidad es 10.5")
            end
        end


        context "Herencia de la clase Avicola" do
            it "Se espera que una instancia de la clase Avicola sea una granja Avicola" do
                expect(@uno).to be_a_kind_of(Avicola)
                expect(@dos).to be_a_kind_of(Avicola)
                expect(@tres.is_a? Avicola).to eq(true)
                expect(@cuatro.is_a? Avicola).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un Dato" do
                expect(@uno).to be_a_kind_of(Datos)
                expect(@dos).to be_a_kind_of(Datos)
                expect(@tres.is_a? Datos).to eq(true)
                expect(@cuatro.is_a? Datos).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un objeto (Object)" do
                expect(@uno).to be_a_kind_of(Object)
                expect(@dos).to be_a_kind_of(Object)
                expect(@tres.is_a? Object).to eq(true)
                expect(@cuatro.is_a? Object).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un objeto basico (BasicObject)" do
                expect(@uno).to be_a_kind_of(BasicObject)
                expect(@dos).to be_a_kind_of(BasicObject)
                expect(@tres.is_a? BasicObject).to eq(true)
                expect(@cuatro.is_a? BasicObject).to eq(true)
            end
            it "No se espera que una instancia de la clase Avicola sea un Animal" do
                expect(@uno).not_to be_a_kind_of(Animal)
                expect(@dos).not_to be_a_kind_of(Animal)
                expect(@tres.is_a? Animal).to eq(false)
                expect(@cuatro.is_a? Animal).to eq(false)
            end
            it "No se espera que una instancia de la clase Avicola sea un Ave" do
                expect(@uno).not_to be_a_kind_of(Ave)
                expect(@dos).not_to be_a_kind_of(Ave)
                expect(@tres.is_a? Ave).to eq(false)
                expect(@cuatro.is_a? Ave).to eq(false)   
            end
            it "No se espera que una instancia de la clase Avicola sea un Enumerable" do
                expect(@uno).to be_a_kind_of(Enumerable)
                expect(@dos).to be_a_kind_of(Enumerable)
                expect(@tres.is_a? Enumerable).to eq(true)
                expect(@cuatro.is_a? Enumerable).to eq(true)   
            end
        end

        context "Enumerable" do
            it "Prueba []" do
                expect(@uno[0]).to eq(:gansos)
                expect(@dos[:numero]).to eq(100)
                expect(@tres["precio_unidad"]).to eq(31.50)
                expect(@cuatro[-4]).to eq(200)
            end
            it "Prueba maximo" do
                expect(@grupo.max).to eq(@cuatro)
            end
            it "Prueba minimo" do
                expect(@grupo.min).to eq(@uno)
            end
            it "Prueba sort" do
                grupo  = [@tres, @cuatro, @uno, @dos]
                expect(grupo.sort).to eq([@uno, @dos, @tres, @cuatro])
            end
            it "Prueba collect" do
                uno    = Avicola.new(:gansos, :huevos, 500, 10.50, 42)
                dos    = Avicola.new(:pollos, :sacrificio, 1000, 21, 31.50)
                tres   = Avicola.new(:patos, :huevos, 1500, 31.50, 21)
                cuatro = Avicola.new(:pavos, :sacrificio, 2000, 42, 10.50)
                grupo  = [uno, dos, tres, cuatro]
                expect(@grupo.collect {|p| p * 10}).to eq(grupo)
            end
            it "Prueba detect" do
                expect(@grupo.detect {|p| p.ave == :gansos && p.destino == :huevos && p.numero == 50}).to eq(@uno)
                expect(@grupo.detect {|p| p.ave == :patos && p.destino == :huevos && p.numero == 150}).to eq(@tres)
                expect(@grupo.detect {|p| p.ave == :gansos && p.destino == :huevos && p.numero == 55}).to eq(nil)
            end
            it "Prueba find_all" do
                expect(@grupo.find_all {|p| p.destino == :huevos && p.numero >= 50}).to eq([@uno, @tres])
                expect(@grupo.find_all {|p| p.numero <= 100}).to eq([@uno, @dos])
                expect(@grupo.find_all {|p| p.ave == :pavos && p.destino == :huevos && p.numero >= 2000 }).to eq([])
            end
        end



        context "Funciones Avicolas" do
            it "Gestion de puesta de huevos" do
                expect(@uno.puesta_huevos).to eq(:campo_abierto)
                expect(@dos.puesta_huevos).to eq(:jaula)
                expect(@tres.puesta_huevos).to eq(:campo_abierto)
                expect(@cuatro.puesta_huevos).to eq(:jaula)
            end
            it "Uso de antibióticos" do
                expect(@uno.antibioticos).to eq("Se necesitan 100 antibióticos de forma semanal en la granja.")
                expect(@dos.antibioticos).to eq("Se necesitan 200 antibióticos de forma semanal en la granja.")
                expect(@tres.antibioticos).to eq("Se necesitan 300 antibióticos de forma semanal en la granja.")
                expect(@cuatro.antibioticos).to eq("Se necesitan 400 antibióticos de forma semanal en la granja.")
            end
            it "Población reproductora" do
                @uno.add_animal(Ave.new(:corto, :anisodactilas, :corredoras, 1, 1000, :macho, 9000))
                @uno.add_animal(Ave.new(:grueso_y_robusto, :palmeadas, :voladoras, 2, 2000, :hembra, 2000))
                @uno.add_animal(Ave.new(:ancho_y_aplanado, :anisodactilas, :nadadoras, 3, 333, :macho, 5033))
                @uno.add_animal(Ave.new(:corto, :palmeadas, :corredoras, 50, 731, :hembra, 8888))

                expect(@uno.poblacion_reproduccion).to eq("Hay 3 animales preparados para la reproducción.")
            end
        end
    end
end