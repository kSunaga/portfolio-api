class ApplicationController < ActionController::API
  class ForbiddenException < StandardError; end

  rescue_from Exception, with: :render_exception
  rescue_from ForbiddenException, with: :render_message

  def authenticate?
    user = AdminUser.find_by(auth_token: params[:access_token])
    user.present?
  end

  def check_authenticate
    raise ForbiddenException, 'token認証に失敗しました。' unless authenticate?
  end

  def render_exception(e)
    logger.error("[Error] #{e.message}")
    render json: { message: 'システムエラーが起きました' }
  end

  def render_message(e)
    render json: { message: e.message }
  end
end
