
# Clase para gestionar los animales.
class Animal

    include Comparable

    # @overload Getters.
    attr_reader :identificador, :edad, :sexo, :peso

    # Método que inicializa las variables de instancia y de clase.
    def initialize (iden = 0, e = 0, sex = "", pe = 0)

        if defined?(@@contador)
            @@contador += 1
        else
            @@contador = 1
        end

        @identificador = iden
        @edad = e
        @sexo = sex
        @peso = pe
    end

    # Metodo que convierte a String.
    # @return [String]
    def to_s
        "El animal #{@identificador} de #{@edad} dias de vida es #{@sexo} con un peso de #{@peso} gramos"
    end

    # Método que devuelve el número de Objetos de la clase Animal.
    # @return [String]
    def self.contador
        @@contador
    end

    # Método para poder usar el módulo Comparable.
    # @return [Integer]
    def <=> other
        @peso <=> other.peso
    end

    def == other
        @edad == other.edad && @peso == other.peso && @sexo == other.sexo && @identificador == other.identificador
    end
end