
class Ave < Animal

    attr_reader :pico, :patas, :movilidad
    def initialize (pi = "", pa = "", mo = "", iden = 0, e = 0, sex = "", pe = 0)
    
        super(iden ,e ,sex ,pe)
        @pico = pi
        @patas = pa
        @movilidad = mo
    end

    def to_s

        "La ave tiene un pico #{@pico}, unas patas #{@patas} y pertenece al grupo de aves #{@movilidad}"
    end
end