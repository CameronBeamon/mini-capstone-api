class ProductsController < ApplicationController
  def show_all
    render json: Product.all
  end
end
