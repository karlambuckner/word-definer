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

describe('link word redirect', {:type => :feature}) do
  it("navigates to a new page displaying that word with define form") do
    visit('/output')
    visit('/output/bunny')
    fill_in('definition', :with => 'floppy animal that hops')
    click_button('Define!')
    expect(page).to have_content('bunny', 'floppy animal that hops')
  end
end
