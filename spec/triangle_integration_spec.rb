require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'triangle path', { type: :feature }  do
  it 'takes user input sides and results page shows type of triangle' do
    visit '/'
    fill_in 'side_a', with: 3
    fill_in 'side_b', with: 3
    fill_in 'side_c', with: 3
    click_button 'Submit'
    expect(page).to have_content 'Equilateral'
    click_link 'back'
    fill_in 'side_a', with: 3
    fill_in 'side_b', with: 3
    fill_in 'side_c', with: 4
    click_button 'Submit'
    expect(page).to have_content 'Isosceles'
    click_link 'back'
    fill_in 'side_a', with: 3
    fill_in 'side_b', with: 4
    fill_in 'side_c', with: 5
    click_button 'Submit'
    expect(page).to have_content 'Scalene'
  end
end
