class StoresController < ApplicationController
  def index
    @zip = params[:search]
    service = BestBuyService.new(@zip)
    @stores = service.stores
    @total = service.total
  end

  def show
    # @store = StoreFinderService.new(params[:id])
  end
end
