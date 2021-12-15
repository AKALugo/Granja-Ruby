
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
          array.select{|obj| obj.edad > dias}
        end
    end
end