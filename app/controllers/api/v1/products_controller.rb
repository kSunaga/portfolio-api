class Api::V1::ProductsController < ApplicationController
  before_action :set_params, only: %i(show)

  def new
  end

  def index
    products = Product.all
    render json: products
  end

  def show
    render json: @product
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

  def set_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :body, :image_url)
  end
end
