class CategoriesController < ApplicationController
  def create 
    category = Category.new(
      name: params[:name]
    )

    if category.save
      @category = category
      render json: @category.as_json
    else 
      render json: {errors: recipe.errors.full_messages}, status: 422
    end
  end

  def destroy
    category_id = params[:id]
    category = Category.find_by(id: category_id)
    category.destroy
    render json: {message: "category successfully deleted!"}
  end
end
