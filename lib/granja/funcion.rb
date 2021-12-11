
module Granja
# Modulo que almacena las funciones de la granja.
  module Funcion

  # Constante.
  CONDICIONES_DE_VIDA = :campo_abierto
  CONDICIONES_DE_VIDA1 = :establo

      # Método para la función de cuidados
      def self.cuidados (cui)
    
        if (cui == 1) 
          return "Cuidados intensivos"
        else 
          return "Cuidados leves"
        end
      end

    # Método para la función reproductiva.
      def self.reproduccion (rep)

        if (rep == 1) 
          return "Época reproductiva"
        else 
          return "Época no reproductiva"
        end
      end
    end
end