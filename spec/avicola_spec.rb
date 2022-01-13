RSpec.describe Granja do
    describe Granja::Avicola do


        before :each do
            @ganso1 = Granja::Ave.new(1, 999, :macho, 900.1, :corto, :anisodactilas, :corredoras)
            @pollo1 = Granja::Ave.new(1, 2000, :hembra, 200.2, :grueso_y_robusto, :palmeadas, :voladoras)
            @pato1  = Granja::Ave.new(1, 221, :macho, 503.3, :ancho_y_aplanado, :anisodactilas, :nadadoras)
            @pato2  = Granja::Ave.new(2, 1590, :macho, 503.3, :ancho_y_aplanado, :anisodactilas, :nadadoras)
            @pavo1  = Granja::Ave.new(1, 301, :hembra, 888.8, :corto, :palmeadas, :corredoras)
            @pavo2  = Granja::Ave.new(2, 100, :hembra, 888.8, :corto, :palmeadas, :corredoras)

            @uno    = Granja::Avicola.new(1, "Granja Gansos", "Gansos de calidad", :gansos, :huevos, 1, 10.50, 500, [@ganso1])
            @dos    = Granja::Avicola.new(2, "Granja Pollos", "Pollos de calidad", :pollos, :sacrificio, 1, 21, 31.50, [@pollo1])
            @tres   = Granja::Avicola.new(3, "Granja Patos", "Patos de calidad", :patos, :huevos, 2, 31.50, 50, [@pato1, @pato2])
            @cuatro = Granja::Avicola.new(4, "Granja Pavos", "Pavos de calidad", :pavos, :sacrificio, 2, 500, 5000, [@pavo1, @pavo2])
            @cooperativa  = [@uno, @dos, @tres, @cuatro]
        end



        context "Atributos de la clase Avicola" do
            it "Tiene una clase para almacenar los datos de la granja" do
                expect(Granja::Avicola.new()).not_to be(nil)
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
                expect(@uno.numero).to eq(1)
                expect(@dos.numero).to eq(1)
                expect(@tres.numero).to eq(2)
                expect(@cuatro.numero).to eq(2)
            end
            it "Tiene un atributo para el precio unitario de los animales" do
                expect(@uno.precio_unidad).to eq(10.50)
                expect(@dos.precio_unidad).to eq(21)
                expect(@tres.precio_unidad).to eq(31.50)
                expect(@cuatro.precio_unidad).to eq(500)
            end
            it "Tiene un atributo para el precio de venta unitario de los animales" do
                expect(@uno.precio_venta_u).to eq(500)
                expect(@dos.precio_venta_u).to eq(31.50)
                expect(@tres.precio_venta_u).to eq(50)
                expect(@cuatro.precio_venta_u).to eq(5000)
            end
            it "Tiene un atributo para almacenar las aves de la granja" do
                expect(@uno.almacen_animal).not_to eq(nil)
                expect(@dos.almacen_animal).not_to eq(nil)
                expect(@tres.almacen_animal).not_to eq(nil)
                expect(@cuatro.almacen_animal).not_to eq(nil)
            end
            it "Se obtiene una cadena con la informacion de la granja avicola correctamente formateada" do
                expect(@uno.to_s).to eq("La granja Avicola tiene como aves a los gansos, el destino de estas aves es huevos, en la granja hay 1 de aves, su precio por unidad es 10.5 y el precio de venta por unidad es 500")
                expect(@dos.to_s).to eq("La granja Avicola tiene como aves a los pollos, el destino de estas aves es sacrificio, en la granja hay 1 de aves, su precio por unidad es 21 y el precio de venta por unidad es 31.5")
                expect(@tres.to_s).to eq("La granja Avicola tiene como aves a los patos, el destino de estas aves es huevos, en la granja hay 2 de aves, su precio por unidad es 31.5 y el precio de venta por unidad es 50")
                expect(@cuatro.to_s).to eq("La granja Avicola tiene como aves a los pavos, el destino de estas aves es sacrificio, en la granja hay 2 de aves, su precio por unidad es 500 y el precio de venta por unidad es 5000")
            end
        end



        context "Herencia de la clase Avicola" do
            it "Se espera que una instancia de la clase Avicola sea una granja Avicola" do
                expect(@uno).to be_a_kind_of(Granja::Avicola)
                expect(@dos).to be_a_kind_of(Granja::Avicola)
                expect(@tres.is_a? Granja::Avicola).to eq(true)
                expect(@cuatro.is_a? Granja::Avicola).to eq(true)
            end
            it "Se espera que una instancia de la clase Avicola sea un Dato" do
                expect(@uno).to be_a_kind_of(Granja::Datos)
                expect(@dos).to be_a_kind_of(Granja::Datos)
                expect(@tres.is_a? Granja::Datos).to eq(true)
                expect(@cuatro.is_a? Granja::Datos).to eq(true)
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
                expect(@uno).not_to be_a_kind_of(Granja::Animal)
                expect(@dos).not_to be_a_kind_of(Granja::Animal)
                expect(@tres.is_a? Granja::Animal).to eq(false)
                expect(@cuatro.is_a? Granja::Animal).to eq(false)
            end
            it "No se espera que una instancia de la clase Avicola sea un Ave" do
                expect(@uno).not_to be_a_kind_of(Granja::Ave)
                expect(@dos).not_to be_a_kind_of(Granja::Ave)
                expect(@tres.is_a? Granja::Ave).to eq(false)
                expect(@cuatro.is_a? Granja::Ave).to eq(false)   
            end
            it "No se espera que una instancia de la clase Avicola sea un Enumerable" do
                expect(@uno).to be_a_kind_of(Enumerable)
                expect(@dos).to be_a_kind_of(Enumerable)
                expect(@tres.is_a? Enumerable).to eq(true)
                expect(@cuatro.is_a? Enumerable).to eq(true)   
            end
        end



        # Si no se le especifica bloque ruby crea uno por defecto {|obj| obj}
        context "Haciendo Avicola Enumerable" do
            before :each do
                @vacio  = Granja::Avicola.new
            end
            it "comprobrando el metodo all?o" do
                expect(@uno.all?(Numeric)).to eq(true)
                expect(@dos.all?(Numeric)).to eq(true)
                expect(@tres.all?(Numeric)).to eq(true)
                expect(@vacio.all?(Numeric)).to eq(false)
              end
              it "comprobrando el metodo any?" do
                expect(@uno.any?).to eq(true)
                expect(@dos.any?).to eq(true)
                expect(@tres.any?).to eq(true)
                expect(@vacio.any?).to eq(false)
              end
              it "comprobrando el metodo collect" do
                expect(@uno.collect{|obj| obj}).to eq([1, 10.50, 500])
                expect(@dos.collect{|obj| obj}).to eq([1, 21, 31.50])
                expect(@tres.collect{|obj| obj}).to eq([2, 31.50, 50])
                expect(@cuatro.collect{|obj| obj}).to eq([2, 500, 5000])
              end
              it "comprobrando el metodo map" do
                expect(@uno.map{|obj| obj}).to eq([1, 10.50, 500])
                expect(@dos.map{|obj| obj}).to eq([1, 21, 31.50])
                expect(@tres.map{|obj| obj}).to eq([2, 31.50, 50])
                expect(@cuatro.map{|obj| obj}).to eq([2, 500, 5000])
              end
              it "comprobrando el metodo count" do
                expect(@uno.count).to eq(3)
                expect(@tres.count).to eq(3)
                expect(@cuatro.count).to eq(3)
                expect(@vacio.count).to eq(3)
              end
              it "comprobrando el metodo find" do
                expect(@uno.find {|i| i == 1}).to eq(1)
                expect(@dos.find {|i| i == 21}).to eq(21)
                expect(@tres.find {|i| i == 2}).to eq(2)
                expect(@cuatro.find {|i| i == 500}).to eq(500)
              end
              it "comprobrando el metodo detect" do
                expect(@uno.detect {|i| i == 1}).to eq(1)
                expect(@dos.detect {|i| i == 21}).to eq(21)
                expect(@tres.detect {|i| i == 2}).to eq(2)
                expect(@cuatro.detect {|i| i == 5000}).to eq(5000)
              end
              it "comprobrando el metodo drop" do
                expect(@uno.drop(0)).to eq([1, 10.50, 500])
                expect(@dos.drop(1)).to eq([21, 31.50])
                expect(@tres.drop(2)).to eq([50])
                expect(@cuatro.drop(1)).to eq([500, 5000])
              end
              it "comprobrando el metodo drop_while" do
                expect(@uno.drop_while{|obj| obj != 1}).to eq([1, 10.50, 500])
                expect(@dos.drop_while{|obj| obj != 31.50}).to eq([31.50])
                expect(@tres.drop_while{|obj| obj != 31.50}).to eq([31.50, 50])
                expect(@cuatro.drop_while{|obj| obj != 2}).to eq([2, 500, 5000])
              end
              it "comprobrando el metodo max" do
                expect(@uno.max).to eq(500)
                expect(@dos.max).to eq(31.50)
                expect(@tres.max).to eq(50)
                expect(@cuatro.max).to eq(5000)
              end
              it "comprobrando el metodo min" do
                expect(@uno.min).to eq(1)
                expect(@dos.min).to eq(1)
                expect(@tres.min).to eq(2)
                expect(@cuatro.min).to eq(2)
              end
              it "comprobrando el metodo sort" do
                expect(@uno.sort).to eq([1, 10.50, 500])
                expect(@dos.sort).to eq([1, 21, 31.50])
                expect(@tres.sort).to eq([2, 31.50, 50])
                expect(@cuatro.sort).to eq([2, 500, 5000])
              end
        end



        context "Funciones Avicolas" do
            it "Prueba []" do
                expect(@uno[0]).to eq(:gansos)
                expect(@dos[:numero]).to eq(1)
                expect(@tres["precio_unidad"]).to eq(31.50)
                expect(@cuatro[-4]).to eq(2)
            end
            it "Gestion de puesta de huevos" do
                expect(@uno.puesta_huevos).to eq(:campo_abierto)
                expect(@dos.puesta_huevos).to eq(:jaula)
                expect(@tres.puesta_huevos).to eq(:campo_abierto)
                expect(@cuatro.puesta_huevos).to eq(:jaula)
            end
            it "Uso de cuidados" do
                expect(@uno.cuidados(10, @uno.almacen_animal)).to eq([@ganso1 + 10])
                expect(@dos.cuidados(10, @dos.almacen_animal)).to eq([@pollo1 + 10])
                expect(@tres.cuidados(10, @tres.almacen_animal)).to eq([@pato1 + 10, @pato2 + 10])
                expect(@cuatro.cuidados(10, @cuatro.almacen_animal)).to eq([@pavo1 + 10, @pavo2 + 10])
            end
            it "Población reproductora" do
                expect(@uno.reproduccion(24, @uno.almacen_animal)).to eq([@ganso1])
                expect(@dos.reproduccion(24, @dos.almacen_animal)).to eq([@pollo1])
                expect(@tres.reproduccion(24, @tres.almacen_animal)).to eq([@pato2])
                expect(@cuatro.reproduccion(24, @cuatro.almacen_animal)).to eq([])
            end
            it "Bienestar animal" do
                expect(@uno.bienestar_animal(@uno, Granja::Funcion::CONDICIONES_DE_VIDA_E)).to eq(50)
                expect(@dos.bienestar_animal(@dos, Granja::Funcion::CONDICIONES_DE_VIDA_I)).to eq(50)
                expect(@tres.bienestar_animal(@tres, Granja::Funcion::CONDICIONES_DE_VIDA_E)).to eq(29)
                expect(@cuatro.bienestar_animal(@cuatro, Granja::Funcion::CONDICIONES_DE_VIDA_I)).to eq(34)
            end
            it "Beneficio neto" do
                expect(@uno.beneficio_neto(@uno)).to eq(49.0)
                expect(@dos.beneficio_neto(@dos)).to eq(5.24)
                expect(@tres.beneficio_neto(@tres)).to eq(2.04)
                expect(@cuatro.beneficio_neto(@cuatro)).to eq(506.3)
            end
            it "Indice productividad" do
                expect(@uno.indicador_productividad(@uno, Granja::Funcion::CONDICIONES_DE_VIDA_E)).to eq(2)
                expect(@dos.indicador_productividad(@dos, Granja::Funcion::CONDICIONES_DE_VIDA_I)).to eq(1)
                expect(@tres.indicador_productividad(@tres, Granja::Funcion::CONDICIONES_DE_VIDA_E)).to eq(1)
                expect(@cuatro.indicador_productividad(@cuatro, Granja::Funcion::CONDICIONES_DE_VIDA_I)).to eq(2)
            end
        end



        context "Haciendo que la clase Avicola funcione con el Enumerable de Array" do
            it "Prueba maximo indicador de la productividad para Array de Granjas" do
                condiciones = [Granja::Funcion::CONDICIONES_DE_VIDA_E, Granja::Funcion::CONDICIONES_DE_VIDA_I, Granja::Funcion::CONDICIONES_DE_VIDA_CABALLO]
                combo = @cooperativa.zip(condiciones)
                expect(combo.max_by{|x| x[0].indicador_productividad(x[0], x[1])}).to eq([@uno, Granja::Funcion::CONDICIONES_DE_VIDA_E])
            end
            it "Prueba incrementar precio" do
                p_uno    = @uno.aumentar_precio_venta((@uno.precio_venta_u/10).ceil)
                p_dos    = @dos.aumentar_precio_venta((@uno.precio_venta_u/10).ceil)
                p_tres   = @tres.aumentar_precio_venta((@uno.precio_venta_u/10).ceil)
                p_cuatro = @cuatro.aumentar_precio_venta((@uno.precio_venta_u/10).ceil)
                p_cooperativa  = [p_uno, p_dos, p_tres, p_cuatro]

                condiciones = [Granja::Funcion::CONDICIONES_DE_VIDA_E, Granja::Funcion::CONDICIONES_DE_VIDA_I, Granja::Funcion::CONDICIONES_DE_VIDA_CABALLO]
                combo = @cooperativa.zip(condiciones)
                maxi = combo.max_by{|x| x[0].indicador_productividad(x[0], x[1])}

                # Comparamos un array que contiene el precio de venta.
                expect(@cooperativa.collect{|x| x.aumentar_precio_venta((maxi[0].precio_venta_u / 10).ceil)}.collect{|x| x.precio_venta_u}).to eq(p_cooperativa.collect{|x| x.precio_venta_u})

            end

            it "Prueba máximo para Array" do
                expect(@cooperativa.max).to eq(@tres)
            end
            it "Prueba minimo para Array" do
                expect(@cooperativa.min).to eq(@uno)
            end
            it "Prueba sort para Array" do
                cooperativa  = [@tres, @cuatro, @uno, @dos]
                expect(cooperativa.sort).to eq([@uno, @dos, @tres, @cuatro])
            end
            it "Prueba detect para Array" do
                expect(@cooperativa.detect {|p| p.ave == :gansos && p.destino == :huevos && p.numero == 1}).to eq(@uno)
                expect(@cooperativa.detect {|p| p.ave == :patos && p.destino == :huevos && p.numero == 2}).to eq(@tres)
                expect(@cooperativa.detect {|p| p.ave == :gansos && p.destino == :huevos && p.numero == 55}).to eq(nil)
            end
            it "Prueba find_all para Array" do
                expect(@cooperativa.find_all {|p| p.destino == :huevos && p.numero >= 1}).to eq([@uno, @tres])
                expect(@cooperativa.find_all {|p| p.numero <= 1}).to eq([@uno, @dos])
                expect(@cooperativa.find_all {|p| p.ave == :pavos && p.destino == :huevos && p.numero >= 2000 }).to eq([])
            end
        end
    end
end