
module Granja
    class DSLFuncionalidad

        attr_reader :identificacion, :beneficio, :bienestar_animal, :productividad_granja

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

            beneficio_medio = granja.ejemplares.sum{|x| x[4] - x[3]} / granja.ejemplares.length.to_f
            peso_medio = granja.ejemplares.sum{|x| x[2]} / granja.ejemplares.length.to_f

            @beneficios = ((beneficio_medio / peso_medio) * 100).round(2)
        end

        def bienestar granja, opcion = {}

            max = granja.ejemplares.collect{|x| x[2] / x[1]}.max
            ratio = granja.ejemplares.sum{|x| x[2] / x[1]} / granja.ejemplares.length

            if opcion[:condiciones] == :campo
                @bienestar_animal = ((ratio * 100) / max).ceil
            else
                @bienestar_animal = ((ratio * 50) / max).ceil
            end
        end

        def productividad granja, opcion = {}

            valor_bien = bienestar(granja, opcion)
            valor_bene = beneficio(granja)

            @productividad_granja = ((evalBienestar(valor_bien) + evalBeneficio(valor_bene)) / 2).ceil
        end

                # Método que asigna un valor al bienestar de la granja según un valor.
        def evalBienestar (valor)

          if valor <= 20
            return 1
          elsif valor >= 80
            return 3
          else
            return 2
          end
          
        end

        # Método que asigna un valor al beneficio de la granja según un valor.
        def evalBeneficio (valor)

          if valor < 10
            return 1
          elsif valor > 50
            return 3
          else
            return 2
          end
        end

    end
end