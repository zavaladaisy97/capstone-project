class GarmentsController < ApplicationController
  def create
    @garment = Garment.new(
      name: params[:name]
      color_id: params[:color_id]
      category_id: params[:category_id]
    )
    if @garment.save
      render template: "garments/show"
    else
      render json: {errors: @garment.errors.full_messages }, status: :unprocessable_entity 
    end 
  end 


  def show
    @garment = Garment.find(params[:id])
    render template: "garments/show"
  end


end
