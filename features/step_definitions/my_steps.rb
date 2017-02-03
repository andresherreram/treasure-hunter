
Given(/^abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Then(/^no debo ver "([^"]*)"$/) do |text|
  expect(page.body).to_not match /#{text}/m
end

When(/^presione el boton "([^"]*)"$/) do |texto|
  click_button(texto)
end

Then(/^debo ver cuadricula (\d+)x(\d+)$/) do |alto, ancho|
  
  expect(page).to have_selector('tr', count:alto.to_i)
  expect(page).to have_selector('td', count:(alto.to_i)*(ancho.to_i))
end

Then(/^en la posicion (\d+),(\d+) debo ver "([^"]*)"$/) do |x, y, text|
  # expect(find(:xpath, "//table/tr[1]/td[1]/text()")).to eq text
  expect(find("td.pos-#{x}-#{y}").text).to match /#{text}/m
end

When(/^ingreso "([^"]*)" en "([^"]*)"$/) do |comando, campo|
  fill_in(campo, :with => comando)
end
