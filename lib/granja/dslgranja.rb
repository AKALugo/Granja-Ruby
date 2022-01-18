module Granja

    # Constructor.
    class DSLGranja

        attr_reader :dato, :ejemplares

        def initialize identificacion = nil, &block
            @dato = [identificacion]
            @ejemplares = []
        
            if block_given?  
                if block.arity == 1
                    yield self
                else
                    instance_eval(&block) 
                end
            end
        end

        # Convertir a String
        def to_s
            output = "DSLGranja:\n"
            output << "La granja #{@dato[0]} de nombre #{@dato[1]}, cuya descripcion es #{@dato[2]} y su animal es #{@dato[3]}\n\n"

            @ejemplares.each_with_index do |ejemplar, indice|
                output << "Ejemplar #{indice + 1}:\nSu identificador es #{ejemplar[0]}, su edad es #{ejemplar[1]}, su peso es #{ejemplar[2]},"
                output << " su precio de compra es #{ejemplar[3]} y su precio de venta es #{ejemplar[4]}\n"
            end

            output
        end

        # Creamos los datos.
        def datos nombre, opcion = {}
            @dato << nombre
            @dato << opcion[:descripcion] if opcion[:descripcion]
            @dato << opcion[:tipo] if opcion[:tipo]
        end

        # Creamos los ejemplares.
        def ejemplar identificacion, opcion = {}
            ejemplar = []
            ejemplar << identificacion
            ejemplar << opcion[:edad] if opcion[:edad]
            ejemplar << opcion[:peso] if opcion[:peso]
            ejemplar << opcion[:precio_compra] if opcion[:precio_compra]
            ejemplar << opcion[:precio_venta] if opcion[:precio_venta]
            
            @ejemplares << ejemplar

        end

    end
end