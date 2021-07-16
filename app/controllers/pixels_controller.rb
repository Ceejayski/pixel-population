class PixelsController < ApplicationController
  before_action :set_pixel, only: %i[show]
  def index
    @pixels = Pixel.latest
  end

  def pixels_all
    @pixels = Pixel.all
  end

  def show
    @parent_a = @pixel.parents[1]
    @parent_b = @pixel.parents[0]
    @children = @pixel.children
  end

  def generate_base
    @alpha = Pixel.create(name: 'Pixel Alpha', R: rand_number_generator, B: rand_number_generator,
                          G: rand_number_generator)
    @beta = Pixel.create(name: 'Pixel Beta', R: rand_number_generator, B: rand_number_generator,
                         G: rand_number_generator)
    @omega = Pixel.create(name: 'Pixel Omega', R: rand_number_generator, B: rand_number_generator,
                          G: rand_number_generator)
    @gamma = Pixel.create(name: 'Pixel Gamma', R: rand_number_generator, B: rand_number_generator,
                          G: rand_number_generator)
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Pixel Base Alpha and Beta Created Successfully' }
      format.js
    end
  end

  def generate_filial
    flash[:notice] = pair_child_creator
    redirect_to root_path
  end

  private

  def set_pixel
    @pixel = Pixel.find(params[:id])
  end
end
