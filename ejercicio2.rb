module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end 
end

module Alimentacion
    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
    module Omnivoro
        def comer
            'Puedo comer tanto plantas como carne!'
        end
    end
end

class Animal
    include Habilidades
    include Alimentacion
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end
class Ave < Animal
end
class Mamifero < Animal
end
class Insecto < Animal
end

class Pinguino < Ave
    include Nadador
    include Caminante
    include Carnivoro
end
class Paloma < Ave
    include Volador
    include Caminante
    include Herbivoro
end
class Pato < Ave
    include Volador
    include Caminante
    include Nadador
    include Omnivoro
end

class Perro < Mamifero
    include Caminante
    include Nadador
    include Carnivoro
end
class Gato < Mamifero
    include Caminante
    include Carnivoro
end
class Vaca < Mamifero
    include Caminante
    include Herbivoro
end

class Mosca < Insecto
    include Volador
    include Omnivoro
end
class Mariposa < Insecto
    include Volador
    include Herbivoro
end
class Abeja < Insecto
    include Volador
    include Omnivoro
end

animal1 = Pinguino.new('pingu')
puts animal1.nombre
puts animal1.nadar
puts animal1.comer
puts animal1.caminar

animal2 = Perro.new('perrito')
puts animal2.nombre
puts animal2.caminar
puts animal2.nadar
puts animal2.comer

animal3 = Mariposa.new('Marii')
puts animal3.nombre
puts animal3.volar
puts animal3.comer