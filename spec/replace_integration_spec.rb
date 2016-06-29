require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectatopns, false)

describe('how a user can type in a sentence and pick a word to replace with a new word', {:type => :feature}) do
  it('processes the user entry sentence and returns a new sentence') do
    visit('/')
    fill_in('words', :with => 'I love cats')
    fill_in('replace_word', :with => 'cats')
    fill_in('new_word', :with => 'dogs')
    click_button('Enter')
    expect(page).to have_content('I love dogs')
  end
end
