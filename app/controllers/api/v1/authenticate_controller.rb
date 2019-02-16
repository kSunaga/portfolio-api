class Api::V1::AuthenticateController < ApplicationController

  def post
    user = AdminUser.find(params[:user_id])
    if(user.auth_token == params[:access_token])
      render json: { status: 200}
    else
      render json: { message: '認証失敗しました。'}
    end
  end
end
