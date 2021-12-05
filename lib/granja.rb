# frozen_string_literal: true

require_relative "granja/version"
require "granja/datos"
require "granja/animal"
require "granja/ave"
require "granja/funcion"

module Granja

  include Funcion
  
  class Error < StandardError; end
  # Your code goes here...
  
end
