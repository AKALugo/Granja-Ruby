
# Clase que se encarga de guardar los datos de la granja.
class Datos

  # @overload Getters.
  attr_reader :identificacion, :nombre, :tipo, :descripcion

  # Método que inicializa las variables de instancia.
  def initialize (iden = nil, nom = "", tip = nil, desc = "")

    if (tip == :avicola || tip == :ganadera)
      @tipo = tip
    else 
      return nil
    end
    
    @identificacion = iden
    @nombre = nom
    @descripcion = desc
  end

  # Metodo que convierte a String.
  # @return [String]
  def to_s

    "La identificacion de la granja es: #{@identificacion}, su nombre es: #{@nombre}, su tipo es: #{@tipo} y su descripción es: #{@descripcion}"
  end
end
