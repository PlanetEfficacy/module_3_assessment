class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  def destroy
    Item.find(params[:id]).destroy
    render json: {}, status: :no_content
  end

  private

    def item_params
      params.require(:item).permit(:name, :description, :image_url)
    end
end
