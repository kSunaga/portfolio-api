class Api::V1::AdminUsersController < ApplicationController

  def create
    admin_user = AdminUser.new(set_params)

    if admin_user.save
      render json: admin_user
    else
      render json: { status: '失敗しました'}
    end
  end

  private

  def set_params
    params.permit(:name, :password)
  end
end
