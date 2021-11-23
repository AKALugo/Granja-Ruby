# frozen_string_literal: true

require_relative "granja/version"

module Granja
  class Error < StandardError; end
  # Your code goes here...
  
  class Funcion

    attr_reader :condicion_de_vida_animal, :cuidado_animal

    def initialize (cond_vid = "", cui_ani = "")

      @condicion_de_vida_animal = cond_vid
      @cuidado_animal = cui_ani
    end
  end
end
