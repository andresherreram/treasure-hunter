
Given(/^iniciado el juego$/) do
  visit '/game'
end

Then(/^debo ver las instrucciones$/) do
  expect(page.body).to match /Instrucciones/m
end

