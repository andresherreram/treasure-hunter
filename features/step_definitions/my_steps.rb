
Given(/^abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^presione el boton "([^"]*)"$/) do |texto|
  click_button(texto)
end

