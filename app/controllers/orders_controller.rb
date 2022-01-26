class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_quantity = 0
    i = 0
    while i < carted_products.length
      calculated_subtotal += Product.find_by(id: carted_products[i].product_id).price * carted_products[i].quantity
      calculated_tax += Product.find_by(id: carted_products[i].product_id).tax
      calculated_quantity += carted_products[i].quantity
      carted_products[i].status = "purchased"
      carted_products[i].save
      i = i + 1
    end
    new_order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_tax + calculated_subtotal,
      quantity: calculated_quantity,
    )
    if new_order.save
      i = 0
      while i < carted_products.length
        carted_products[i].order_id = new_order.id
        carted_products[i].save
        i = i + 1
      end
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
