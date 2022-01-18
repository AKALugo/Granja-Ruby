
module Granja
    class DSLFuncionalidad

        attr_reader :identificacion, :beneficios, :bienestar_animal, :productividad_granja

        def initialize identificacion = nil, &block
            @identificacion = identificacion
            @beneficios = 0.0
            @bienestar_animal = 0.0
            @productividad_granja = 0
        
            if block_given?  
                if block.arity == 1
                    yield self
                else
                    instance_eval(&block) 
                end
            end
        end

        def to_s
            output = "La granja #{@identificacion} tiene un beneficio de #{@beneficios}%, su bienestar es de #{@bienestar_animal}"
            output << " y su productividad es de #{@productividad_granja}"

            output
        end

        def beneficio granja

          @beneficios = granja.beneficio_neto(granja)
        end

        def bienestar granja, opcion = {}

          @bienestar_animal = granja.bienestar_animal(granja, opcion[:condiciones])
        end

        def productividad granja, opcion = {}

          @productividad_granja = granja.indicador_productividad(granja, opcion[:condiciones])
        end
    end
end