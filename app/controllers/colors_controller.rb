class ColorsController < ApplicationController
  def create 
    color = Color.new(
      name: params[:name]
    )

    if color.save
      @color = color
      render json: @color.as_json
    else 
      render json: {errors: recipe.errors.full_messages}, status: 422
    end
  end

  def destroy
    color_id = params[:id]
    color = Color.find_by(id: color_id)
    color.destroy
    render json: {message: "Color successfully deleted!"}
  end
end
