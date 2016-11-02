require 'rails_helper'

RSpec.feature "user visits a single store" do
  scenario "and sees that stores information" do
    visit root_path
    fill_in "search", with: "80202"
    click_button "Search"
    click_link "Cherry Creek Shopping Center"
    expect(current_path).to eq("/stores/2740")

    expect(page).to have_link("Cherry Creek Shopping Center")
    expect(page).to have_content("Denver")
    expect(page).to have_content("3.25")
    expect(page).to have_content("303-270-9189")
    expect(page).to have_content("Mobile")

  end
end

As a user
After I have searched a zip code for stores
When I click the name of a store
Then my current path should be "/stores/:store_id"
I should see the store name, store type and address with city, state and zip
I should see an unordered list of the store hours in the following format:
  * Mon: 10am-9pm
  * Tue: 10am-9pm
  * Wed: 10am-9pm
  * Thurs: 10am-9pm
  * Fri: 10am-9pm
  * Sat: 10am-9pm
  * Sun: 11am-7pm
