class UserController < ApplicationController

  def create
    User.create!(create_user_params)
  end

  def edit

  end

  def show

  end

  def delete

  end

  private

    def create_user_params
      params.require(:user).permit(:firstname,:lastname,:password,:password_confirmation,:email)
    end

end
