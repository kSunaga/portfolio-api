class Api::V1::ProductsController < ApplicationController
  before_action :set_params, only: %i(show)
  before_action :check_authenticate, only: %i(create update)

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

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      render json: {status: 200, message: '更新が成功しました'}
    else
      render json: {message: '更新が失敗しました。'}
    end
  end

  private

  def set_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.permit(:title, :description, :body, :image_url, languages: [])
  end
end
