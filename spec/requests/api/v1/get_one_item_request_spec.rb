require 'rails_helper'

RSpec.describe "GET request to /api/v1/items/:id", :type => :request do
  it "gets single items and its attributes as json" do
    item = FactoryGirl.create(:item)
    get api_v1_item_path(item)

    items = JSON.parse(response.body)

    expect(response).to have_http_status(200)
    expect(items.class).to eq(Hash)
    expect(items["id"]).to eq(Item.first.id)
    expect(items["name"]).to eq(Item.first.name)
    expect(items["description"]).to eq(Item.first.description)
    expect(items["image_url"]).to eq(Item.first.image_url)
    expect(items.keys).to_not include("created_at")
    expect(items.keys).to_not include("updated_at")
  end
end
