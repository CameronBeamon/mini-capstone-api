class OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      new_order = Order.new(
        user_id: current_user.id,
        product_id: product.id,
        quantity: params[:quantity],
        subtotal: product.price,
        tax: product.tax,
        total: product.total,
      )
      new_order.save
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
