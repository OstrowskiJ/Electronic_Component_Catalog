class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_catalogs = @user.catalogs
    @hash = Gmaps4rails.build_markers(@user.locations) do |location, marker|
    marker.lat location.latitude
    marker.lng location.longitude
    marker.infowindow location.address
  end
  end

end
