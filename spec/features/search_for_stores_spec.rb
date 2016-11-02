require 'rails_helper'

RSpec.feature "user searchs for stores by zipcode" do
  scenario "and sees stores within 25 miles of the zipcode" do
    visit root_path
    fill_in "search", with: "80202"
    click_button "search"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Stores within 25 miles of 80202")
    expect(page).to have_content("17 Total Stores")
    expect(page).to have_css("tr", count: 16)
    within "tr.results" do
      expect(page).to have_link("long name")
      expect(page).to have_content("city")
      expect(page).to have_content("distance")
      expect(page).to have_content("phone number")
      expect(page).to have_content("store type")
    end
  end
end
