class StoreFinderService

  # attr_reader :zip,
  #             :response,
  #             :body,
  #             :total
  #
  # def initialize(zip)
  #   @zip = zip
  #   @response = conn.get "stores(storeId=#{id})?format=json&show=hours,hoursAmPm,gmtOffset,detailedHours&apiKey=#{ENV['BEST_BUY_KEY']}"
  #   @body = JSON.parse(response.body)
  # end
  #
  # def conn
  #   Faraday.new(:url => 'https://api.bestbuy.com/v1/') do |faraday|
  #     faraday.request  :url_encoded             # form-encode POST params
  #     faraday.response :logger                  # log requests to STDOUT
  #     faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  #   end
  # end
  #
  # def store
  #   stores = body["stores"].map do |raw_store|
  #     Store.new(raw_store)
  #   end
  # end

end
