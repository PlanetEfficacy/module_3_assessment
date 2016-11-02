require 'rails_helper'

RSpec.describe BestBuy do
  it "returns stores by zipcode" do
    service = BestBuy.new(80202)

    expect(service.stores.count).to eq(15)
    expect(service.total).to eq(17)

    store = service.stores.first

    expect(store.id).to eq(2740)
    expect(store.type).to eq("Mobile")
    expect(store.name).to eq("Cherry Creek Shopping Center")
    expect(store.distance).to eq("3.25")
    expect(store.phone).to eq("303-270-9189")
  end
end
