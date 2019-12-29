class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private

  def not_authenticated
    redirect_to login_path
  end
  add_flash_types :success, :danger
end
