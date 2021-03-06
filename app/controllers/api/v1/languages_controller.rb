class Api::V1::LanguagesController < ApplicationController
  before_action :set_params, only: %i(show)
  before_action :check_authenticate, only: %i(create update)

  def create
    @language = Language.new(language_params)

    if @language.save
      render json: {message: '登録に成功しました。'}
    else
      render json: {message: '登録に失敗しました。'}
    end
  end

  def show
    render json: @language
  end

  def update
    language = Language.find(params[:id])
    if language.update(language_params)
      render json: {status: 200, message: '更新が成功しました'}
    else
      render json: {message: '更新に失敗しました。'}
    end
  end

  def index
    render json: Language.all
  end

  private

  def set_params
    @language = Language.find(params[:id])
  end

  def language_params
    params.permit(:name, :description, :first_experience, :color)
  end
end
