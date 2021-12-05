
class Animal

    include Comparable

    attr_reader :identificador, :edad, :sexo, :peso

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

    def to_s
        "El animal #{@identificador} de #{@edad} dias de vida es #{@sexo} con un peso de #{@peso} gramos"
    end

    def self.contador
        @@contador
    end

    def <=> other
        @peso <=> other.peso
    end
end