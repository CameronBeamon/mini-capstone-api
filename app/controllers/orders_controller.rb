class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    new_order = Order.new(
      user_id: current_user.id,
    )
    if new_order.save
      carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

      carted_products.each do |carted_product|
        carted_product.order_id = new_order.id
        carted_product.status = "pruchased"
        carted_product.save
      end
      new_order.update_totals
      render json: new_order
    else
      render json: { message: "didnt work" }
    end
  end

  def show
    if current_user
      order = Order.find_by(user_id: current_user.id, id: params[:id])
      render json: order
    else
      render json: "nah"
    end
  end

  def index
    if current_user
      orders = Order.where(user_id: current_user.id)
      render json: orders
    end
  end
end
