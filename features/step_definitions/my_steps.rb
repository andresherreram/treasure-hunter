
Given(/^abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^presione el boton "([^"]*)"$/) do |texto|
  click_button(texto)
end

Then(/^debo ver cuadricula (\d+)x(\d+)$/) do |alto, ancho|
  
  expect(page).to have_selector('tr', count:alto.to_i)
  expect(page).to have_selector('td', count:(alto.to_i)*(ancho.to_i))
end
