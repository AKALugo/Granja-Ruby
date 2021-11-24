
# Clase que se encarga de guardar los datos de la granja.
class Datos
  
  # @overload Getters.
  attr_reader :identificacion, :nombre, :tipo, :descripcion

  # Método que inicializa las variables de instancia.
  def initialize (iden = "", nom = "", tip = "", desc = "")

    @identificacion = iden
    @nombre = nom
    @tipo = tip
    @descripcion = desc
  end

  # Metodo que convierte a String.
  # @return [String]
  def to_s

    "La identificacion de la clase es: #{@identificacion}\nEl nombre de la granja es: #{@nombre}\nEl tipo de granja es: #{@tipo}\nLa descripcion de la granja es: #{@descripcion}"
  end
end
