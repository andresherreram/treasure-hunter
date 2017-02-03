class Mapa
	attr_reader :cuadricula

	def initialize
		@cuadricula = []
		8.times do
			@cuadricula << (0...8).map{}
		end
		@cuadricula[0][0] = "P"
	end
	
end