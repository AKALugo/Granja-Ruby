
class Ave < Animal

    include Comparable
    attr_reader :pico, :patas, :movilidad
    def initialize (pi = "", pa = "", mo = "", iden = 0, e = 0, sex = "", pe = 0)
    
        if (pi == "corto" || pi == "grueso y robusto" || pi == "ancho y aplanado")
            @pico = pi
        else
            return nil
        end

        if (pa == "anisodactilas" || pa == "palmeadas")
            @patas = pa
        else 
            return nil
        end

        if (mo == "corredoras" || mo == "voladoras" || mo == "nadadoras")
            @movilidad = mo
        else
            return nil
        end

        super(iden ,e ,sex ,pe)
    end

    def to_s

        "La ave tiene un pico #{@pico}, unas patas #{@patas} y pertenece al grupo de aves #{@movilidad}"
    end

    def <=> other

        @edad <=> other.edad
    end
end