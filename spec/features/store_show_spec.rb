require 'rails_helper'

RSpec.feature "user visits a single store" do
  xscenario "and sees that stores information" do
    visit root_path
    fill_in "search", with: "80202"
    click_button "Search"
    click_link "Cherry Creek Shopping Center"
    expect(current_path).to eq("/stores/2740")

    expect(page).to have_content("Cherry Creek Shopping Center")
    expect(page).to have_content("Mobile")
    expect(page).to have_content("address")
    expect(page).to have_content("Denver")
    expect(page).to have_content("Colorado")
    expect(page).to have_content("80202")

    within "ul" do
      expect(page).to have_content("Mon: 10am-9pm")
      expect(page).to have_content("Tue: 10am-9pm")
      expect(page).to have_content("Wed: 10am-9pm")
      expect(page).to have_content("Thurs: 10am-9pm")
      expect(page).to have_content("Fri: 10am-9pm")
      expect(page).to have_content("Sat: 10am-9pm")
      expect(page).to have_content("Sun: 10am-9pm")
    end
  end
end
