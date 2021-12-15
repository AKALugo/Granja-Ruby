
module Granja
    # Clase para gestionar los animales que sean aves.
    class Ave < Animal

        include Comparable

        # @overload Getters.
        attr_reader :pico, :patas, :movilidad

        # Método que inicializa las variables de instancia.
        def initialize (iden = 0, e = 0, sex = "", pe = 0, pi = nil, pa = nil, mo = nil)
        
            if (pi == :corto || pi == :grueso_y_robusto || pi == :ancho_y_aplanado)
                @pico = pi
            else
                return nil
            end

            if (pa == :anisodactilas || pa == :palmeadas)
                @patas = pa
            else 
                return nil
            end

            if (mo == :corredoras || mo == :voladoras || mo == :nadadoras)
                @movilidad = mo
            else
                return nil
            end

            super(iden ,e ,sex ,pe)
        end

        # Metodo que convierte a String.
        # @return [String]
        def to_s

            "La ave tiene un pico #{@pico}, unas patas #{@patas} y pertenece al grupo de aves #{@movilidad}"
        end

        # Método para poder usar el módulo Comparable.
        def <=> other

            @edad <=> other.edad
        end

        # Sustituye al == de comparable.
        def == other
            @pico == other.pico && @patas == other.patas && @movilidad == other.movilidad
        end

        # Sustituye al + de comparable.
        def + other

            Ave.new(@identificador, @edad, @sexo, @peso + other, @pico, @patas, @movilidad)
        end
    end
end