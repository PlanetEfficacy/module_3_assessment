class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render status: :ok
    render :json => {:name => "David"}
  end
end
