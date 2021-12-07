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

## Fallo: Falta la clase Datos
```
Failure/Error:
  describe Granja::Datos do
    it "Tiene una clase para almacenar los dato de la granja" do
      expect(Granja::Datos.new()).not_to eq(nil)
    end
  end

NameError:
  uninitialized constant Granja::Datos
  Did you mean?  Data
\# ./spec/granja_spec.rb:35:in `block in <top (required)>'
\# ./spec/granja_spec.rb:3:in `<top (required)>'
```

## Arreglo: Falta la clase Datos
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
```

## Fallo: Falta el atributo identificacion
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para la identificar la granja
     Failure/Error: expect(Granja::Datos.new(1).identificacion).to eq(1)
     
     ArgumentError:
       wrong number of arguments (given 1, expected 0)
     \# ./spec/granja_spec.rb:40:in `initialize'
     \# ./spec/granja_spec.rb:40:in `new'
     \# ./spec/granja_spec.rb:40:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo identificacion
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
```

## Fallo: Falta el atributo nombre
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para el nombre de la granja
     Failure/Error: expect(Granja::Datos.new("Granja familia").nombre).to eq("Granja familia")
     
     NoMethodError:
       undefined method `nombre' for #<Granja::Datos:0x00005641c12216f0>
     \# ./spec/granja_spec.rb:46:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo nombre
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
```

## Fallo: Falta el atributo tipo
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para el tipo de la granja
     Failure/Error:
           def initialize (iden = "", nom = "")
       
             @identificacion = iden
             @nombre = nom
     
     ArgumentError:
       wrong number of arguments (given 3, expected 0..2)
     \# ./lib/granja.rb:29:in `initialize'
     \# ./spec/granja_spec.rb:52:in `new'
     \# ./spec/granja_spec.rb:52:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo tipo
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja
```

## Fallo: Falta el atributo descripcion
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja
    Tiene un atributo para la descripci´on de la granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para la descripci´on de la granja
     Failure/Error:
           def initialize (iden = "", nom = "", tip = "")
       
             @identificacion = iden
             @nombre = nom
             @tipo = tip
     
     ArgumentError:
       wrong number of arguments (given 4, expected 0..3)
     \# ./lib/granja.rb:29:in `initialize'
     \# ./spec/granja_spec.rb:58:in `new'
     \# ./spec/granja_spec.rb:58:in `block (3 levels) in <top (required)>'
```

## Arreglo: Falta el atributo descripcion
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja
    Tiene un atributo para la descripci´on de la granja
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
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja
    Tiene un atributo para la descripci´on de la granja
    .to_s de la clase Datos (FAILED - 1)

Failures:

  1) Granja Granja::Datos .to_s de la clase Datos
     Failure/Error: expect(Granja::Datos.new(1,"Granja familia","Vacas","Muy bonita").to_s).to eq("La identificacion de la clase es: 1\nEl nombre de la granja es: Granja familia\nEl tipo de granja es: Vacas\nLa descripcion de la granja es: Muy bonita")
     
       expected: "La identificacion de la clase es: 1\nEl nombre de la granja es: Granja familia\nEl tipo de granja es: Vacas\nLa descripcion de la granja es: Muy bonita"
            got: "\#<Granja::Datos:0x0000558ae1c23eb0>"
     
       (compared using ==)
     
       Diff:
       @@ -1,5 +1,2 @@
       -La identificacion de la clase es: 1
       -El nombre de la granja es: Granja familia
       -El tipo de granja es: Vacas
       -La descripcion de la granja es: Muy bonita
       +\#<Granja::Datos:0x0000558ae1c23eb0>
```

### Arreglo: Falta el metodo to_s
```
Granja
  Versión 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproducción de los animales
    .to_s de la clase Funcion
  Granja::Datos
    Tiene una clase para almacenar los dato de la granja
    Tiene un atributo para la identificar la granja
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de la granja
    Tiene un atributo para la descripci´on de la granja
    .to_s de la clase Datos
```
### Fallo: Falta la clase Animal
```
An error occurred while loading ./spec/animal_spec.rb.
Failure/Error:
      describe Animal do
          
  
  
  
          context "Atributos de la clase Animal" do
              it "Tiene una clase para representar animales" do
                  expect(Animal.new()).not_to eq(nil)
              end
          end

NameError:
  uninitialized constant Animal
# ./spec/animal_spec.rb:2:in `block in <top (required)>'
# ./spec/animal_spec.rb:1:in `<top (required)>'
```

### Arreglo: Falta la clase animal
```
Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
```

### Error: Atributos de la clase Animal
```
Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo para identificar al animal
     Failure/Error: expect(@uno.identificador).to eq(1)
     
     NoMethodError:
       undefined method `identificador' for #<Animal:0x000055645f3cf000>
     # ./spec/animal_spec.rb:18:in `block (4 levels) in <top (required)>'

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con la edad del animal en dıas
     Failure/Error: expect(@uno.edad).to eq(400)
     
     NoMethodError:
       undefined method `edad' for #<Animal:0x000055b154decc80 @identificador=1>
     # ./spec/animal_spec.rb:24:in `block (4 levels) in <top (required)>'

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con el sexo del animal
     Failure/Error: expect(@uno.sexo).to eq("macho")
     
     NoMethodError:
       undefined method `sexo' for #<Animal:0x000055dcb4e57770 @identificador=1, @edad=400>
     # ./spec/animal_spec.rb:30:in `block (4 levels) in <top (required)>'

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con el peso del animal en gramos
     Failure/Error: expect(@uno.peso).to eq(9000)Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dıas
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
      Se obtiene una cadena con la informaci´on del animal correctamente formateada
      Contador de objetos de la clase Animal
```

### Arreglo: Atributos de la clase Animal
```
Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dıas
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
```

### Error: método to_s de la clase Animal
```
Failures:

  1) Granja Animal Atributos de la clase Animal Se obtiene una cadena con la informaci´on del animal correctamente formateada
     Failure/Error: expect(@uno.to_s).to eq("El animal 1 de 400 dias de vida es macho con un peso de 9000 gramos")
     
       expected: "El animal 1 de 400 dias de vida es macho con un peso de 9000 gramos"
            got: "#<Animal:0x0000564277198218>"
     
       (compared using ==)
     # ./spec/animal_spec.rb:42:in `block (4 levels) in <top (required)>'

```

### Arreglo: método to_s de la clase Animal
```
Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dıas
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
      Se obtiene una cadena con la informaci´on del animal correctamente formateada
```

### Herencia clase Animal
```
    Herencia de la Animal
      Se espera que una instancia de la clase Animal sea un Animal
      Se espera que una instancia de la clase Animal sea un objeto (Object)
      Se espera que una instancia de la clase Animal sea un objeto basico (BasicObject)
      No se espera que una instancia de la clase Animal sea una cadena (String)
      No se espera que una instancia de la clase Animal sea un numero (Numeric)
```

### Fallo: Falta la clase Ave
```
Failures:

  1) Granja Animal Atributos de la clase Ave Tiene una clase para representar aves
     Failure/Error: expect(Ave.new()).not_to eq(nil)
     
     NameError:
       uninitialized constant Ave
     # ./spec/ave_spec.rb:6:in `block (4 levels) in <top (required)>'

```

### Arreglo: Falta la clase Ave
```
Granja
  Ave
    Atributos de la clase Ave
      Tiene una clase para representar aves
```

### Fallo: Atributos de la clase Ave
```
Failures:

  1) Granja Ave Atributos de la clase Ave Tiene un atributo para el tipo de pico (corto, grueso y robusto o ancho y aplanado)
     Failure/Error: expect(@uno.pico).to eq("corto")
     
     NoMethodError:
       undefined method `pico' for #<Ave:0x0000560f881ae490>
     # ./spec/ave_spec.rb:17:in `block (4 levels) in <top (required)>'

Failures:

  1) Granja Ave Atributos de la clase Ave Tiene un atributo para el tipo de las patas (anisod´actilas o palmeadas)
     Failure/Error: expect(@uno.patas).to eq("anisodactilas")
     
     NoMethodError:
       undefined method `patas' for #<Ave:0x000055df2cf0a300>
     # ./spec/ave_spec.rb:23:in `block (4 levels) in <top (required)>'

Failures:

  1) Granja Ave Atributos de la clase Ave Tiene un atributo para su tipo de movilidad (corredoras, voladoras o nadadoras)
     Failure/Error: expect(@uno.movilidad).to eq("corredoras")
     
     NoMethodError:
       undefined method `movilidad' for #<Ave:0x00005566ea7c9ab0>
     # ./spec/ave_spec.rb:29:in `block (4 levels) in <top (required)>'
```

### Arreglo: Atributos de la clase Ave
```
Granja
  Ave
    Atributos de la clase Ave
      Tiene una clase para representar aves
      Tiene un atributo para el tipo de pico (corto, grueso y robusto o ancho y aplanado)
      Tiene un atributo para el tipo de las patas (anisodactilas o palmeadas)
      Tiene un atributo para su tipo de movilidad (corredoras, voladoras o nadadoras)
```

### Error: Metodo to_s de la clase Ave
```
Failures:

  1) Granja Ave Atributos de la clase Ave Se obtiene una cadena con la informaci´on del ave correctamente formateada
     Failure/Error: expect(@uno.to_s).to eq("La ave tiene un pico corto, unas patas anisodactilas y pertenece al grupo de aves corredoras")
     
       expected: "La ave tiene un pico corto, unas patas anisodactilas y pertenece al grupo de aves corredoras"
            got: "El animal 0 de 0 dias de vida es  con un peso de 0 gramos"
     
       (compared using ==)
     # ./spec/ave_spec.rb:35:in `block (4 levels) in <top (required)>'
```

### Arreglo: Metodo to_s de la clase Ave
```
Granja
  Ave
    Atributos de la clase Ave
      Tiene una clase para representar aves
      Tiene un atributo para el tipo de pico (corto, grueso y robusto o ancho y aplanado)
      Tiene un atributo para el tipo de las patas (anisodactilas o palmeadas)
      Tiene un atributo para su tipo de movilidad (corredoras, voladoras o nadadoras)
      Se obtiene una cadena con la informaci´on del ave correctamente formateada
```

### Herencia clase Ave
```
    Herencia de la clase Ave
      Se espera que una instancia de la clase Ave sea un Ave
      Se espera que una instancia de la clase Ave sea un Animal
      Se espera que una instancia de la clase Ave sea un objeto (Object)
      Se espera que una instancia de la clase Ave sea un objeto basico (BasicObject)
      No se espera que una instancia de la clase Ave sea una cadena (String)
      No se espera que una instancia de la clase Ave sea un n´umero (Numeric)
```

### Error: Contador de Objetos de la clase Animal
```
Failures:

  1) Granja Animal Atributos de la clase Animal Contador de objetos de la clase Animal
     Failure/Error: expect(Animal.contador).to eq(29)
     
     NoMethodError:
       undefined method `contador' for Animal:Class
     # ./spec/animal_spec.rb:48:in `block (4 levels) in <top (required)>'
```

### Arreglo: Contador de Objetos de la clase Animal
```
Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dıas
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
      Se obtiene una cadena con la informacion del animal correctamente formateada
      Contador de objetos de la clase Animal
```

### Error: Comparable clase Animal
```
Failures:

  1) Granja Animal Comparable Animal1 < Animal2
     Failure/Error: expect(@dos < @uno).to eq(true)
     
     NoMethodError:
       undefined method `<' for #<Animal:0x00005632ae26c820>
     # ./spec/animal_spec.rb:88:in `block (4 levels) in <top (required)>'

  2) Granja Animal Comparable Animal1 <= Animal2
     Failure/Error: expect(@dos <= @uno).to eq(true)
     
     NoMethodError:
       undefined method `<=' for #<Animal:0x00005632ade29d80>
       Did you mean?  <=>
     # ./spec/animal_spec.rb:92:in `block (4 levels) in <top (required)>'

  3) Granja Animal Comparable Animal1 > Animal2
     Failure/Error: expect(@uno > @dos).to eq(true)
     
     NoMethodError:
       undefined method `>' for #<Animal:0x00005632ae272e00>
     # ./spec/animal_spec.rb:100:in `block (4 levels) in <top (required)>'

  4) Granja Animal Comparable Animal1 >= Animal2
     Failure/Error: expect(@uno >= @dos).to eq(true)
     
     NoMethodError:
       undefined method `>=' for #<Animal:0x00005632ae271af0>
     # ./spec/animal_spec.rb:104:in `block (4 levels) in <top (required)>'

Finished in 0.02045 seconds (files took 0.15778 seconds to load)
```

### Arreglo: Comparable clase Animal
```
    Comparable
      Animal1 < Animal2
      Animal1 <= Animal2
      Animal1 == Animal2
      Animal1 > Animal2
      Animal1 >= Animal2
```

### Error: Comparable clase Ave
```
Failures:

  1) Granja Animal Comparable Animal1 < Animal2
     Failure/Error: expect(@dos < @uno).to eq(true)
Failures:

  1) Granja Ave Comparable Ave1 < Ave2
     Failure/Error: expect(@dos < @uno).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
       
     # ./spec/ave_spec.rb:85:in `block (4 levels) in <top (required)>'

  2) Granja Ave Comparable Ave1 == Ave2
     Failure/Error: expect(@uno == @dos).to eq(false)
     
       expected: false
            got: true
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -false
       +true
       
     # ./spec/ave_spec.rb:93:in `block (4 levels) in <top (required)>'

  3) Granja Ave Comparable Ave1 > Ave2
     Failure/Error: expect(@uno > @dos).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
```

### Arreglo: Comparable clase Ave
```
    Comparable
      Ave1 < Ave2
      Ave1 <= Ave2
      Ave1 == Ave2
      Ave1 > Ave2
      Ave1 >= Ave2
```

### Herencia clase Datos
```
    Herencia de la clase Datos
      Se espera que una instancia de la clase Datos sea un Datos
      Se espera que una instancia de la clase Datos sea un objeto (Object)
      Se espera que una instancia de la clase Datos sea un objeto basico (BasicObject)
      No se espera que una instancia de la clase Datos sea una cadena (String)
      No se espera que una instancia de la clase Datos sea un numero (Numeric)
```

### Arreglo Funcion
```
Granja
  Funcion
    Componentes del modulo Funcion
      Existe un modulo para almacenar las funcionalidades
      Existe una constante para representar las condiciones de vida (campo abierto, establo)
      Existe un procedimiento para establecer los cuidados de los animales
      Existe un procedimiento para establecer la reproduccion de los animales
    Herencia del modulo Funcion
      Se espera que sea un objeto de la clase Module
      Se espera que sea un objeto (Object)
      Se espera que sea un objeto basico (BasicObject)
      No se espera que sea una instancia de la clase que representa una cadena (String)
      No se espera que sea una instancia de la clase que representa un numero (Numeric)
```

### Cambio en las expectativas de la jerarquía.