require 'rails_helper'

RSpec.describe "Get request to /api/v1/items", :type => :request do
  it "gets all items and their attributes as json" do
    items = FactoryGirl.create_list(:item, 2)
    get api_v1_items_path

    items = JSON.parse(response.body)

    expect(response).to have_http_status(200)
    expect(items.class).to eq(Array)
    expect(items.count).to eq(2)
    expect(items.first["id"]).to eq(Item.first.id)
    expect(items.first["name"]).to eq(Item.first.name)
    expect(items.first["description"]).to eq(Item.first.description)
    expect(items.first["image_url"]).to eq(Item.first.image_url)
    expect(items.first.keys).to_not include("created_at")
    expect(items.first.keys).to_not include("updated_at")
  end
end
