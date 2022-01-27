class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    if current_user
      carted_product = CartedProduct.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        status: "carted",
        order_id: params[nil],
      )
      carted_product.save
      render json: carted_product
    else
      render json: { message: "nah" }
    end
  end

  def index
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: carted_products
  end

  def delete
    carted_product = CartedProduct.find_by(user_id: current_user.id, id: params[:id])
    if carted_product.status == "carted"
      carted_product.status = "removed"
      carted_product.save
      render json: { message: "Good job you did it" }
    else
      render json: { message: "There's nothing to remove" }
    end
  end
end
