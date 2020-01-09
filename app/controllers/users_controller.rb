class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create], raise: false

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, success: 'ユーザー登録が完了しました'
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:kanji, :hurigana, :email, :phone_number, :address, :certification, :other_certification, :password, :password_confirmation)
  # end
  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :password, :password_confirmation)
  end
end
