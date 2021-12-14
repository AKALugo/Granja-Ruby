
module Granja
    # Clase que representa una granja avicola.
    class Avicola < Datos

    include Enumerable, Funcion

        # @overload Getters.
        attr_reader :ave, :destino, :numero, :precio_unidad, :precio_venta_u, :almacen_animal

        # Método que inicializa las variables de instancia.
        def initialize (ide = nil, nom = "", desc = "", ave = nil, destino = nil, numero = 0, precio_unidad = 0, precio_venta_u = 0, almacen_animal = nil)
            
            if (ave == :gansos || ave == :pollos || ave == :patos || ave == :pavos)
                @ave = ave
            else
                return nil
            end

            if (destino == :huevos || destino == :sacrificio)
                @destino = destino
            else
                return nil
            end

            super(ide, nom, :avicola, desc)

            @numero = numero
            @precio_unidad = precio_unidad
            @precio_venta_u = precio_venta_u
            @almacen_animal = almacen_animal
        end

        # Método para añadir animales a nuestra granja sin romper el encapsulamiento.
        def add_animal other

            if (other.instance_of? Granja::Ave)
                @almacen_animal.push(other)
                @numero = @numero + 1
            else
                return "Solo se pueden almacenar Aves."
            end
        end

        # Método que convierte a string nuestra clase.
        def to_s
            s = "La granja Avicola tiene como aves a los #{@ave}, el destino de estas aves es #{@destino}, en la granja hay #{@numero} de aves, "
            s << "su precio por unidad es #{@precio_unidad} y el precio de venta por unidad es #{@precio_venta_u}"
            return s
        end

        # Hace falta para .min .max .sort en []
        def <=> other
        
            @numero <=> other.numero
        end

        # Necesario para .collect en []
        def * value

            Avicola.new(@ave, @destino, @numero * value, @precio_unidad, @precio_venta_u)
        end

        # Da problemas con .collect en  []
        def == other

            @ave == other.ave && @destino == other.destino && @numero == other.numero
        end

        # Método necesario para que nuestra clase sea enumerable.
        def each

            yield @numero
            yield @precio_unidad
            yield @precio_venta_u
        end

        # Método corchete para acceder a los atributos de nuestra clase.
        def [] index
            case index
                when 0, -6
                    @ave
                when 1, -5
                    @destino
                when 2, -4
                    @numero
                when 3, -3
                    @precio_unidad
                when 4, -2
                    @precio_venta_u
                when 5, -1
                    @almacen_animal
                when :ave, "ave"
                    @ave
                when :destino, "destino"
                    @destino
                when :numero, "numero"
                    @numero
                when :precio_unidad, "precio_unidad"
                    @precio_unidad
                when :precio_venta_u, "precio_venta_u"
                    @precio_venta_u
                when :almacen_animal, "almacen_animal"
                    @almacen_animal
                else
                    nil
            end
        end
        
        # Método que indica como se deben resguardar los animales.
        def puesta_huevos
            if (@ave == :pollos || @ave == :pavos)
                return Granja::Funcion::CONDICIONES_DE_VIDA_I
            else
                return Granja::Funcion::CONDICIONES_DE_VIDA_E
            end
        end

        # Método que indica la cantidad de antibióticos que necesitan nuestros anumales.
        def antibioticos valor

            cuidados(valor, @almacen_animal)
        end

        # Método que indica la cantidad de animales listos para la reproducción.
        def poblacion_reproduccion valor
        
            reproduccion(valor, @almacen_animal)
        end
    end
end