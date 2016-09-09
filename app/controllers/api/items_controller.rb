class Api::ItemsController < ApplicationController

 def index
    @items = Item
    .all
    .page(params[:page])
    .per(100)
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update(item_params)
        render :show
      else

      render json: { error_messages: ["wrong"] }, status: 500
    end
  end

  private

  def item_params
      ActionController::Parameters
      .new(JSON.parse(request.body.read))
      .require(:item)
      .permit(Item::PERMITTED_ATTRIBUTES)
  end
end
