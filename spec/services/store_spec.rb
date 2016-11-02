require 'rails_helper'

RSpec.describe Store do
  it "has te attributes of a store" do
    store = Store.new({
      "storeId"=>2740,
      "storeType"=>"Mobile",
      "name"=>"Cherry Creek Shopping Center",
      "city"=>"Denver",
      "distance"=>3.25,
      "phone"=>"303-270-9189"})

    expect(store.store_id).to eq("2740")
    expect(store.store_type).to eq("Mobile")
    expect(store.name).to eq("Cherry Creek Shopping Center")
    expect(store.distance).to eq("3.25")
    expect(store.phone).to eq("303-270-9189")
  end
end
