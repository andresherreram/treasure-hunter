require 'spec_helper'

describe Mapa do
	let(:mapa) { Mapa.new }

	it "inicia con un mapa de 8x8" do
		expect(mapa.cuadricula.count).to eq 8
		expect(mapa.cuadricula[0].count).to eq 8
	end

	it "el personaje esta en 0,0" do		
		expect(mapa.cuadricula[0][0]).to eq "P"
	end

	it "El personaje avanza a 0,1 cuando ingresa el comando avanzar" do		
		mapa.ejecutar "a"
		expect(mapa.cuadricula[0][0]).to eq nil
		expect(mapa.cuadricula[0][1]).to eq "P"
	end

end