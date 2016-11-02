require 'rails_helper'

RSpec.describe "POST request to /api/v1/items with name, description, and image_url", :type => :request do
  it "gets the created items and its attributes as json" do
    post api_v1_items_path, item: FactoryGirl.attributes_for(:item)

    item = JSON.parse(response.body)

    expect(response).to have_http_status(200)
    expect(items.class).to eq(Hash)
    expect(item["id"]).to eq(Item.first.id)
    expect(item["name"]).to eq(Item.first.name)
    expect(item["description"]).to eq(Item.first.description)
    expect(item["image_url"]).to eq(Item.first.image_url)
    expect(item.keys).to_not include("created_at")
    expect(item.keys).to_not include("updated_at")
  end
end
