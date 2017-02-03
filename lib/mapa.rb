class Personaje

	attr_accessor :direccion

	def initialize
		@direccion = :derecha
	end

	def to_s
		case @direccion
		when :derecha
			return ">"
		when :izquierda
			return "<"
		when :abajo
			return "V"
		when :arriba
			return "^"
		end
	end

	alias :inspect :to_s
end

class Mapa
	attr_reader :cuadricula, :personaje
	attr_reader :current_x, :current_y

	OBSTACULOS = {
		1 => [],
		2 => [[0,3], [3,1]],
	}

	TESOROS = {
		1 => [[0, 7]],
		2 => [[7,7]]
	}

	def initialize level = 1
		@level = level.to_i

		@current_x = 0
		@current_y = 0

		@cuadricula = []
		8.times do
			@cuadricula << (0...8).map{}
		end

		@cuadricula[0][0] = Personaje.new

		OBSTACULOS[@level].each do |x,y|
			@cuadricula[x][y] = "0"
		end

		TESOROS[@level].each do |x,y|
			@cuadricula[x][y] = "T"
			@tesoro_x = y
			@tesoro_y = x
		end

		@juego_terminado = false
	end

	def personaje
		return @cuadricula[@current_y][@current_x]		
	end
	
	def ejecutar(comandos)
		return if @juego_terminado

		@juego_terminado = true
		comandos.each_char do |comando|
			case comando
			when "a"
				avanzar()
			when "d"
				case personaje.direccion
				when :arriba
					personaje.direccion = :derecha
				when :abajo
					personaje.direccion = :izquierda
				when :derecha
					personaje.direccion = :abajo
				when :izquierda
					personaje.direccion = :arriba
				end
			when "i"
				case personaje.direccion
				when :arriba
					personaje.direccion = :izquierda
				when :abajo
					personaje.direccion = :derecha
				when :derecha
					personaje.direccion = :arriba
				when :izquierda
					personaje.direccion = :abajo
				end
			end
		end
	end

	def juego_terminado?
		@juego_terminado
	end

	def encontro_tesoro?
		@current_x == @tesoro_x && @current_y == @tesoro_y
	end

	def avanzar
		personaje = @cuadricula[@current_y][@current_x]
		next_x, next_y = @current_x, @current_y

		case personaje.direccion
		when :derecha
			next_x += 1
		when :izquierda
			next_x -= 1
		when :abajo
			next_y += 1
		when :arriba
			next_y -= 1
		end

		if [next_x, next_y].min < 0 || [next_x, next_y].max > 7
			return
		end

		if @cuadricula[next_y][next_x] == "0"
			return
		end

		@cuadricula[@current_y][@current_x] = nil
		@cuadricula[next_y][next_x] = personaje
		@current_x, @current_y = next_x, next_y
	end
end