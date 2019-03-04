class Api::V1::LoginController < ApplicationController

  def post
    admin_user = AdminUser.find_by(name: params[:name])
    if (admin_user && admin_user.authenticate(set_params[:password]))
      render json: admin_user
    else
      render json: { message: 'ログインに失敗しました' }
    end
  end


  private

  def set_params
    params.permit(:name, :password)
  end
end
