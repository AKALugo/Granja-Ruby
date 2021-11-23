# frozen_string_literal: true

require_relative "granja/version"

module Granja
  class Error < StandardError; end
  # Your code goes here...
  
  class Funcion

    attr_reader :condicion_de_vida_animal
    def initialize (cond_vid = "")

      @condicion_de_vida_animal = cond_vid
    end
  end
end
