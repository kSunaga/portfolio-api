class Api::V1::ProductsController < ApplicationController
  def new
  end

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(product_params)

    if product.save
      render json: {status: 200}
    else
      render json: {status: 500}
    end
  end

  def post

  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :body, :image_url)
  end
end
