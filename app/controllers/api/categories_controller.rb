class Api::CategoriesController < ApplicationController
  load_resource

  def index
    respond_with @categories
  end

  def show
    respond_with @category
  end

  def create
    respond_with :api, categories.create(category_params)
  end

  def update
    respond_with @category.update(category_params)
  end

  def destroy
    respond_with @category.destroy
  end

  private

  def category_params
    params.permit(:id, :name, :alias)
  end
end
