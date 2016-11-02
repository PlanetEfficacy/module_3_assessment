require 'rails_helper'

RSpec.feature "it reaches the root page" do
  scenario "and sees the correct header" do
    visit root_path
    expect(page.status_code).to eq(200)
    within "h1" do
      expect(page).to have_content("Items")
    end
  end
end
