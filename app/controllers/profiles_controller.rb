class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @spaces = @profile.spaces
  end

  def my_profile
    @profile = current_user
    @spaces = current_user.spaces
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :description, :is_host, :profile_picture, :email, :encrypted_password)
  end
end
