require 'spec_helper'

describe Mapa do
	let(:mapa) { Mapa.new }

	it "inicia con un mapa de 8x8" do
		expect(mapa.cuadricula.count).to eq 8
		expect(mapa.cuadricula[0].count).to eq 8
	end

	it "el personaje esta en 0,0" do		
		expect(mapa.cuadricula[0][0]).to_not eq nil
	end

	it "el personaje esta mirando para abajo" do
		expect(mapa.cuadricula[0][0].direccion).to eq :derecha

	end


	it "El personaje avanza a 0,1 cuando ingresa el comando avanzar" do		
		mapa.ejecutar "a"
		expect(mapa.cuadricula[0][0]).to eq nil
		expect(mapa.cuadricula[0][1]).to be_instance_of Personaje
	end

	it "El personaje avanza dos pasos cuando se entra aa" do
		mapa.ejecutar "aa"
		expect(mapa.cuadricula[0][0]).to eq nil
		expect(mapa.cuadricula[0][2]).to be_instance_of Personaje
	end

	it "El personaje avanza dos pasos cuando se entra aaa" do
		mapa.ejecutar "aaa"
		expect(mapa.cuadricula[0][0]).to eq nil
		expect(mapa.cuadricula[0][3]).to be_instance_of Personaje
	end

	it "El personaje avanza 8 pasos y encuentra el tesoro" do		
		mapa.ejecutar "aaaaaaa"
		expect(mapa.cuadricula[0][7]).to be_instance_of Personaje
		expect(mapa.encontro_tesoro?).to eq true
	end

	it "Cuando el personaje esta en 0,1 y avanza a la izquierda debe quedar en 0,0" do
		mapa.ejecutar "a"
		mapa.personaje.direccion = :izquierda
		mapa.ejecutar "a"

		expect(mapa.cuadricula[0][1]).to be nil
		expect(mapa.cuadricula[0][0]).to be_instance_of Personaje
		
	end

	it "Cuando el personaje esta en 0,0 y avanza a la izquierda el personaje no debe salir del mapa" do
		mapa.personaje.direccion = :izquierda
		mapa.ejecutar "a"

		expect(mapa.cuadricula[0][0]).to be_instance_of Personaje
	end

	it "Cuando el personaje esta en 0,0 y ejecuta 'da' el personaje queda en 0,1" do
		mapa.ejecutar "da"
		expect(mapa.cuadricula[1][0]).to be_instance_of Personaje
	end

	it "Cuando el personaje esta en 0,0 y ejecuta 'daia' el personaje queda en 1,1" do
		mapa.ejecutar "daia"

		expect(mapa.cuadricula[1][1]).to be_instance_of Personaje
	end

	it "Cuando inicio el mapa debo debo poder ver que el juego no ha iniciado" do
		expect(mapa.juego_iniciado?).to be false
	end	

	it "Cuando ejecuto una accion debo ver que el juego esta iniciado" do
		mapa.ejecutar "a"
		expect(mapa.juego_iniciado?).to be true
	end	
end