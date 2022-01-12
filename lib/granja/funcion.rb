
module Granja
# Modulo que almacena las funciones de la granja.
  module Funcion

  # Constantes.
  CONDICIONES_DE_VIDA_E = :campo_abierto
  CONDICIONES_DE_VIDA_I = :jaula
  CONDICIONES_DE_VIDA_CABALLO = :establo

        # Método para la función de cuidados
        def cuidados (cantidad, array)
          
         array.collect{|obj| obj + cantidad}
        end

        # Método para la función reproductiva.
        def reproduccion (valor, array)

          dias = valor * 30
          # Animales mayores a valor meses
          array.select{|obj| obj > dias}
        end

        # Método para calcular el bienestar animal.
        def bienestar_animal granja, condiciones

          if condiciones == CONDICIONES_DE_VIDA_CABALLO
            return 100
          else
            return (((granja.almacen_animal.sum{|x| x.peso/x.edad} / granja.numero.to_f) * 100) / (granja.almacen_animal.collect{|x| x.peso / x.edad}.max * 2)).ceil
          end
        end

        # Método para calcular el beneficio neto.
        def beneficio_neto granja
          
          if granja.destino == :sacrificio
            
            return ((granja.precio_venta_u / (granja.almacen_animal.sum{|x| x.peso} / granja.numero.to_f)) * 100).round(2)
          else

            return ((granja.precio_venta_u / (granja.almacen_animal.sum{|x| x.edad} / granja.numero.to_f)) * 100).round(2)
          end
        end

        # Método para calcular el indicador de productividad.
        def indicador_productividad granja, condiciones

          return ((evalBienestar(bienestar_animal(granja, condiciones)) + evalBeneficio(beneficio_neto(granja))) / 2).ceil
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