
class Avicola < Datos

include Enumerable

    attr_reader :ave, :destino, :numero, :precio_unidad, :precio_venta_u, :almacen_animal

    def initialize (ave = nil, destino = nil, numero = 0, precio_unidad = 0, precio_venta_u = 0)
        
        if (ave == :gansos || ave == :pollos || ave == :patos || ave = :pavos)
            @ave = ave
        else
            return nil
        end

        if (destino == :huevos || destino == :sacrificio)
            @destino = destino
        else
            return nil
        end

        @numero = numero
        @precio_unidad = precio_unidad
        @precio_venta_u = precio_venta_u
        @almacen_animal = []
    end

    def add_animal other

        if (other.respond_to? Ave)
            @almacen_animal.push(other)
        else
            return "Solo se pueden almacenar Aves."
        end
    end

    def to_s
        s = "La granja Avicola tiene como aves a los #{@ave}, el destino de estas aves es #{@destino}, en la granja hay #{@numero} de aves, "
        s << "su precio por unidad es #{@precio_unidad} y el precio de venta por unidad es #{@precio_venta_u}"
        return s
    end
   # Hace falta para .min .max .sort
    def <=> other
    
        @numero <=> other.numero
    end

    # Necesario para .collect
    def * value

        Avicola.new(@ave, @destino, @numero * value, @precio_unidad, @precio_venta_u)
    end

    # Da problemas con .collect
    def == other

        @ave == other.ave && @destino == other.destino && @numero == other.numero
    end

    def each

        yield @ave
        yield @destino
        yield @numero
        yield @precio_unidad
        yield @precio_venta_u
        yield @almacen_animal
    end

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
end