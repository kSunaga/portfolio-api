class ApplicationController < ActionController::API
  class ForbiddenException < StandardError; end

  rescue_from Exception, with: :render_exception
  rescue_from ForbiddenException, with: :render_message

  def authenticate?
    user = User.find_by(auth_token: params[:access_token])
    user.present?
  end

  def check_authenticate
    raise ForbiddenException, '認証に失敗しました' unless authenticate?
  end
end
