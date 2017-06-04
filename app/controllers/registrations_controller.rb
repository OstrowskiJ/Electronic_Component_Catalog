class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :email, :about, :current_password, :remember_me)
  end

  def sign_in_params
    params.require(:user).permit(:name,:email,:password)
  end

end
