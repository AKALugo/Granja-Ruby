
class Avicola < Datos

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
end