require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word define', {:type => :feature}) do
  it("processes the user entry word and returns link of word") do
    visit('/')
    fill_in('word', :with => 'bunny')
    click_button('Add to my dictionary!')
    expect(page).to have_content('bunny')
  end
end
