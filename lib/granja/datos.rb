
class Datos

  attr_reader :identificacion, :nombre, :tipo, :descripcion

  def initialize (iden = "", nom = "", tip = "", desc = "")

    @identificacion = iden
    @nombre = nom
    @tipo = tip
    @descripcion = desc
  end

  def to_s

    "La identificacion de la clase es: #{@identificacion}\nEl nombre de la granja es: #{@nombre}\nEl tipo de granja es: #{@tipo}\nLa descripcion de la granja es: #{@descripcion}"
  end
end
