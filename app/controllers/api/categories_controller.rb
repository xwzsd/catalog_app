class Api::CategoriesController < ApplicationController

  def index
    @categories = Category
    .all
    .page(params[:page])
    .per(10)
  end

  def show
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
      if @category.update(category_params)
        render :show
      else

      render json: { error_messages: ["wrong"] }, status: 500
    end
  end

  private

  def category_params
      ActionController::Parameters
      .new(JSON.parse(request.body.read))
      .require(:category)
      .permit(Category::PERMITTED_ATTRIBUTES)
  end
end
