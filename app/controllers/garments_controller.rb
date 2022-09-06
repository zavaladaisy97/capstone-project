class GarmentsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @garments = Garment.all

    if params[:search]
      @garments = @garments.where("title ILIKE ?", "%#{params[:search]}%")
    end

    @garments = @garments.order(:id => :desc)
    @colors = Color.all
    @categories = Category.all
    render json: {garments: @garments, colors: @colors, categories: @categories}
  end

  def show
    @garment = Garment.find(params[:id])
    render json: @garment.as_json
  end


  def create
    response = Cloudinary::Uploader.upload(params[:image_file], resource_type: :auto)
    cloudinary_url = response["secure_url"]
    pp cloudinary_url
    @garment = Garment.new(
      name: params[:name],
      color_id: params[:color_id],
      category_id: params[:category_id],
      image: cloudinary_url,
      user_id: current_user.id
    )
    if @garment.save
      render json: @garment.as_json
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
