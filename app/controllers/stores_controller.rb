class StoresController < ApplicationController
  def index
    zip = params[:search]
    conn = Faraday.new(:url => 'https://api.bestbuy.com/v1/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get "stores(area(#{zip},25))?format=json&show=storeId,storeType,name,city,distance,phone&pageSize=15&apiKey=#{ENV['BEST_BUY_KEY']}"
    @stores = JSON.parse(response.body)
  end
end
