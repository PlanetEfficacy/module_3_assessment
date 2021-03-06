require 'rails_helper'

RSpec.describe BestBuyService do
  it "returns stores by zipcode" do
    service = BestBuyService.new(80202)

    expect(service.stores.count).to eq(15)
    expect(service.total).to eq(17)

    store = service.stores.first

    expect(store.store_id).to eq("2740")
    expect(store.store_type).to eq("Mobile")
    expect(store.name).to eq("Cherry Creek Shopping Center")
    expect(store.distance).to eq("3.25")
    expect(store.phone).to eq("303-270-9189")
  end
end
