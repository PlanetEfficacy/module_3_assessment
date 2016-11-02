class StoresController < ApplicationController
  def index
    @zip = params[:search]
    service = BestBuyService.new(@zip)
    @stores = service.stores
    @total = service.total
  end
end
