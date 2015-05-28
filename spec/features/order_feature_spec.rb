require 'rails_helper'

RSpec.feature "order feature" do
  scenario "a user can order an item" do
    visit "items/1"
    expect(page).to have_content("Sleek Wooden Pants")
    click_link_or_button "Add To Order"
    expect(page).to have_content("Information About Your Order")
  end
end
