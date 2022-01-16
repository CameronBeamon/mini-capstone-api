class ProductsController < ApplicationController
  def show
    product = Product.find_by(id: params[:id])
    pp product
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def index
    render json: Product.all
  end

  def create
    new_product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    new_product.save
    render json: new_product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.description = params[:description] || product.description
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(params[:id])
    product.destroy
    render json: { message: "Good job!" }
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
