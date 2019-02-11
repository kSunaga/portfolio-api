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
    languages = existSkill_id ? Language.search_skill_id(params[:skill_id]) : Language.all
    render json: languages
  end

  def post

  end

  private

  def language_params
    params.require(:language).permit(:name, :description, :first_experience)
  end

  def existSkill_id
    params[:skill_id].present?
  end
end
