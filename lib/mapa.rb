class Personaje

	attr_reader :direccion

	def initialize
		@direccion = :abajo
	end

	def to_s
		"P"
	end

	alias :inspect :to_s
end

class Mapa
	attr_reader :cuadricula


	def initialize
		@cuadricula = []
		8.times do
			@cuadricula << (0...8).map{}
		end
		@cuadricula[7][7] = "T"
		@cuadricula[0][0] = Personaje.new
	end
	
	def ejecutar(comando)
		case comando
		when "a"
			avanzar()
		end
		@cuadricula[0][0] = nil
		@cuadricula[0][1] = "P"
	end

	def avanzar
	end
end