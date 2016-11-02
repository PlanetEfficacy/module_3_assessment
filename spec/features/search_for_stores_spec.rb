require 'rails_helper'

RSpec.feature "user searchs for stores by zipcode" do
  scenario "and sees stores within 25 miles of the zipcode" do
    visit root_path
    fill_in "search", with: "80202"
    click_button "Search"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Stores within 25 miles of 80202")
    expect(page).to have_content("17 Total Stores")
    expect(page).to have_css("tr", count: 16)
    within "tr#2740" do
      expect(page).to have_link("Cherry Creek Shopping Center")
      expect(page).to have_content("Denver")
      expect(page).to have_content("3.25")
      expect(page).to have_content("303-270-9189")
      expect(page).to have_content("Mobile")
    end
  end
end
