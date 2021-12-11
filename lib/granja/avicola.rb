
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

end