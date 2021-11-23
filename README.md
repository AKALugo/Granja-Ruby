# Granja

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/granja`. To experiment with that code, run `bin/console` for an interactive prompt.

Esta gema simula una granja

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'granja'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install granja

## Usage

Para realizar las diferentes pruebas hechas con la herramienta rspec:
```
$ rake
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alu0101329185/granja.

## Correción de la versión de la gema

## Fallo: Falta la clase Funcion
```
Failure/Error:
  describe Granja::Funcion do
  end

NameError:
  uninitialized constant Granja::Funcion
\# ./spec/granja_spec.rb:8:in `block in <top (required)>'
\# ./spec/granja_spec.rb:3:in `<top (required)>'
```

## Arreglo: Falta la clase Funcion
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
```

## Fallo: Falta el atributo condicion de vida animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales (FAILED - 1)

Failures:

  1) Granja Granja::Funcion Tiene un atributo para las condiciones de vida de los animales
     Failure/Error: expect(Granja::Funcion.new("Muy buena").condicion_de_vida_animal).to eq("Muy buena")
     
     ArgumentError:
       wrong number of arguments (given 1, expected 0)
     \# ./spec/granja_spec.rb:13:in `initialize'
     \# ./spec/granja_spec.rb:13:in `new'
     \# ./spec/granja_spec.rb:13:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo condicion de vida animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
```

## Fallo: Falta el atributo cuidado animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles (FAILED - 1)

Failures:

  1) Granja Granja::Funcion Tiene un atributo para los cuidados de los animanles
     Failure/Error:
           def initialize (cond_vid = "")
       
             @condicion_de_vida_animal = cond_vid
     
     ArgumentError:
       wrong number of arguments (given 2, expected 0..1)
     \# ./lib/granja.rb:13:in `initialize'
     \# ./spec/granja_spec.rb:19:in `new'
     \# ./spec/granja_spec.rb:19:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo cuidado animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
```

## Fallo: Falta el atributo reproduccion animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales (FAILED - 1)

Failures:

  1) Granja Granja::Funcion Tiene un atributo para la reproducción de los animales
     Failure/Error:
           def initialize (cond_vid = "", cui_ani = "")
       
             @condicion_de_vida_animal = cond_vid
             @cuidado_animal = cui_ani
     
     ArgumentError:
       wrong number of arguments (given 3, expected 0..2)
     \# ./lib/granja.rb:13:in `initialize'
     \# ./spec/granja_spec.rb:25:in `new'
     \# ./spec/granja_spec.rb:25:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo reproduccion animal
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
```

## Fallo: Falta el metodo to_s
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion (FAILED - 1)

Failures:

  1) Granja Granja::Funcion .to_s de la clase Funcion
     Failure/Error: expect(Granja::Funcion.new("Muy buena","Malos","10").to_s).to eq("La calidad de vida de los animales es: Muy buena\nLa calidad de los cuidados animales son: Malos\nLa calidad de la reproduccion es: 10")
     
       expected: "La calidad de vida de los animales es: Muy buena\nLa calidad de los cuidados animales son: Malos\nLa calidad de la reproduccion es: 10"
            got: "\#<Granja::Funcion:0x00005576d68e65a0>"
     
       (compared using ==)
     
       Diff:
       @@ -1,4 +1,2 @@
       -La calidad de vida de los animales es: Muy buena
       -La calidad de los cuidados animales son: Malos
       -La calidad de la reproduccion es: 10
       +\#<Granja::Funcion:0x00005576d68e65a0>
       
     \# ./spec/granja_spec.rb:31:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el metodo to_s
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
```
