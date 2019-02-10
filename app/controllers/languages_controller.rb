class LanguagesController < ApplicationController
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

  def index
    languages = Language.all
    render json: languages
  end

  def post

  end

  private

  def language_params
    params.require(:language).permit(:name, :description, :first_experience)
  end
end
