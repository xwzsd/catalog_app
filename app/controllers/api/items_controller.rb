class Api::ItemsController < ApplicationController
  load_resource

  def index
    respond_with @items
  end

  def show
    respond_with @item
  end

  def create
    respond_with :api, items.create(item_params)
  end

  def update
    respond_with @item.update(item_params)
  end

  def destroy
    respond_with @item.destroy
  end

  private

  def item_params
    params.permit(:id, :id_category, :name, :price, :description)
  end
end
