class Api::V1::LanguagesController < ApplicationController
  before_action :set_params, only: %i(show)

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)

    if @language.save
      render json: {language: '成功'}
    else
      render json: {fail: '失敗'}
    end
  end

  def show
    render json: @language
  end

  def index
    render json: Language.all
  end

  def post

  end

  private

  def set_params
    @language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:name, :description, :first_experience)
  end

end
