class Store
  attr_reader :store_id,
              :name,
              :distance,
              :phone,
              :store_type

  def initialize(raw_store)
    @store_id = raw_store["storeId"].to_s
    @name = raw_store["name"]
    @distance = raw_store["distance"].to_s
    @phone = raw_store["phone"]
    @store_type = raw_store["storeType"]
  end
end
