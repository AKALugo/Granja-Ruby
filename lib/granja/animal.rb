
class Animal

    attr_reader :identificador, :edad, :sexo, :peso

    def initialize (iden = 0, e = 0, sex = "", pe = 0)
        @identificador = iden
        @edad = e
        @sexo = sex
        @peso = pe
    end
end