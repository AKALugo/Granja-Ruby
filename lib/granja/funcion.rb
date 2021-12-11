
module Granja
# Modulo que almacena las funciones de la granja.
  module Funcion

  # Constante.
  CONDICIONES_DE_VIDA_E = :campo_abierto
  CONDICIONES_DE_VIDA_I = :jaula

        # Método para la función de cuidados
        def self.cuidados (cantidad)
      
          "Se necesitan #{cantidad} antibióticos de forma semanal en la granja."
        end

      # Método para la función reproductiva.
        def self.reproduccion (cantidad)

          "Hay #{cantidad} animales preparados para la reproducción."
        end
    end
end