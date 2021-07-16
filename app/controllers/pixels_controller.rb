class PixelsController < ApplicationController
  before_action :set_pixel, only: %i[show]
  def index
    @pixels = Pixel.latest
  end

  def pixels_all
    @pixels = Pixel.all
  end

  def show
  end

  def generate_base
    alpha = Pixel.create(name: 'Pixel Alpha', R: rand_number_generator(), B: rand_number_generator(), G: rand_number_generator() )
    beta = Pixel.create(name: 'Pixel Beta', R: rand_number_generator(), B: rand_number_generator(), G: rand_number_generator() )
    respond_to do |format|
      format.html { redirect_to root_path, notice:  'Pixel Base Alpha and Beta Created Successfully' }
      format.js
    end
  end

  def generate_filial
    flash[:notice] = pair_child_creator()
    redirect_to root_path
  end


  def new
    @pixel = Pixel.new
  end


  def create
    @pixel = Pixel.build(pixel_params)
    if @pixel.save && @pixel.valid?
      flash[:notice] = 'Pixel Base Alpha and Beta Created Successfully'
      render 'index'
    else
      redirect_to new_base_path,  notice: 'Pixel base Creation Failed'  
    end
  end

  private
  def set_pixel
    @pixel = Pixel.find(params[:id])
  end

  def pixel_params
    params.require(:pixel).permit(:name, :R, :G, :B)
  end
end
