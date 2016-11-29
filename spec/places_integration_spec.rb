require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('to do list', {:type => :feature}) do
  it("add user's input to a list on the front page") do
    visit('/')
    fill_in('locale', :with => 'paris')
    click_button('Add To List!')
    expect(page).to have_content("Thank you for updating your list")
  end
end
