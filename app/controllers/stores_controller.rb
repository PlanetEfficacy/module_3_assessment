class StoresController < ApplicationController
  def index

    conn = Faraday.new(:url => 'https://api.bestbuy.com/v1/stores') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get "(area(80202,25))?format=json&show=storeId,storeType,name,city,distance,phone&pageSize=15&apiKey=#{ENV['BEST_BUY_KEY']}"
    response.body
  end
end
