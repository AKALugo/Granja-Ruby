# Clase que almacena las funciones de la granja.
module Funcion

  CONDICIONES_DE_VIDA = "establo"

    def self.cuidados (cui)
    
      if (cui == 1) 
        return "Cuidados intensivos"
      else 
        return "Cuidados leves"
      end
    end

    def self.reproduccion (rep)

      if (rep == 1) 
        return "Época reproductiva"
      else 
        return "Época no reproductiva"
      end
    end
end