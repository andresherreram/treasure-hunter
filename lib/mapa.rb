class Personaje

	attr_reader :direccion

	def initialize
		@direccion = :derecha
	end

	def to_s
		"P"
	end

	alias :inspect :to_s
end

class Mapa
	attr_reader :cuadricula


	def initialize
		@current_x = 0
		@current_y = 0

		@tesoro_x = 7
		@tesoro_y = 0

		@cuadricula = []
		8.times do
			@cuadricula << (0...8).map{}
		end
		@cuadricula[0][7] = "T"
		@cuadricula[0][0] = Personaje.new
	end
	
	def ejecutar(comandos)
		comandos.each_char do |comando|
			case comando
			when "a"
				avanzar()
			end
		end
	end

	def encontro_tesoro?
		@current_x == @tesoro_x && @current_y == @tesoro_y
	end

	def avanzar
		personaje = @cuadricula[@current_y][@current_x]
		old_x, old_y = @current_x, @current_y
		case personaje.direccion
		when :derecha
			@current_x += 1
		end

		@cuadricula[old_y][old_x] = nil
		@cuadricula[@current_y][@current_x] = personaje
	end
end