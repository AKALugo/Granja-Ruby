
class Funcion

  attr_reader :condicion_de_vida_animal, :cuidado_animal, :reproduccion_animal

  def initialize (cond_vid = "", cui_ani = "", repr_ani = "")

    @condicion_de_vida_animal = cond_vid
    @cuidado_animal = cui_ani
    @reproduccion_animal = repr_ani
  end

  def to_s

    "La calidad de vida de los animales es: #{@condicion_de_vida_animal}\nLa calidad de los cuidados animales son: #{@cuidado_animal}\nLa calidad de la reproduccion es: #{@reproduccion_animal}"
  end
end
