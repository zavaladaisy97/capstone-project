class GarmentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @garments = Garment.all

    if params[:search]
      @garments = @garments.where("title ILIKE ?", "%#{params[:search]}%")
    end

    @garments = @garments.order(:id => :desc)

    render template: "garments/index"
  end

  def show
    @garment = Garment.find(params[:id])
    render template: "garments/show"
  end


  def create
    @garment = Garment.new(
      name: params[:name],
      color_id: params[:color_id],
      category_id: params[:category_id],
      image: params[:image],
      user_id: current_user.id
    )
    if @garment.save
      render template: "garments/show"
    else
      render json: {errors: @garment.errors.full_messages }, status: :unprocessable_entity 
    end 
  end 


  def destroy
    garment_id = params[:id]
    garment = Garment.find_by(id: garment_id)
    garment.destroy
    render json: {message: "Garment successfully deleted!"}
  end

  

end
