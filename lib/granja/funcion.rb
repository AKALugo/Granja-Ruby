
module Granja
# Modulo que almacena las funciones de la granja.
  module Funcion

  # Constantes.
  CONDICIONES_DE_VIDA_E = :campo_abierto
  CONDICIONES_DE_VIDA_I = :jaula
  CONDICIONES_DE_VIDA_CABALLO = :establo

        # Método para la función de cuidados
        def cuidados (cantidad, array)
          
          # Animales menores al año
          contador = 0
          array.each do |elemento|
              if elemento.edad <= 365
                  contador = contador + 1
              end
          end

          "Hay #{contador} animales que necesitan #{cantidad} ml de antibióticos de forma semanal"
        end

      # Método para la función reproductiva.
        def reproduccion (valor, array)

          dias = valor * 30
          # Animales mayores a 24 meses
          contador = 0
          array.each do |elemento|
              if elemento.edad > dias
                  contador = contador + 1
              end
          end
          "Hay #{contador} animales preparados para la reproducción."
        end
    end
end