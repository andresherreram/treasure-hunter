
Given(/^iniciado el juego$/) do
  visit '/game'
end

Then(/^debo ver las instrucciones$/) do
  expect(page.body).to match /Instrucciones/m
	expect(page.body).to match /a: avanzar/m
	expect(page.body).to match /d: derecha/m
	expect(page.body).to match /i: izquierda/m
end

