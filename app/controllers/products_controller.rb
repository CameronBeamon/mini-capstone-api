class ProductsController < ApplicationController
  def show
    render json: Product.find_by(params[:id])
  end

  def index
    render json: Product.all
  end

  # def show_first
  #   render json: Product.first
  # end

  # def show_second
  #   render json: Product.second
  # end

  # def show_third
  #   render json: Product.third
  # end
end
