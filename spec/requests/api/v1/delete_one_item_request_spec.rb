require 'rails_helper'

RSpec.describe "DELETE request to /api/v1/items/:id", :type => :request do
  it "deletes single items and its attributes as json" do
    item = FactoryGirl.create(:item)
    expect(Item.count).to eq(1)

    delete api_v1_item_path(item)

    expect(response).to have_http_status(204)
    expect(Item.count).to eq(0)
  end
end
