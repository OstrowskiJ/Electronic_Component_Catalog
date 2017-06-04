class UsersController < ApplicationController
before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user_catalogs = @user.catalogs.paginate(:page => params[:page], :per_page => 4)
    @hash = Gmaps4rails.build_markers(@user.locations) do |location, marker|
    marker.lat location.latitude
    marker.lng location.longitude
    marker.infowindow location.address
  end
end

def catalogs
    @user = User.find(params[:id])
    @catalogs = @user.catalogs.paginate(:page => params[:page], :per_page => 8)
  end

  def index
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC")
       @conversations = Conversation.involving(current_user).order("created_at DESC")
  end

  def current_user_catalog
  redirect_to user_catalogs_path(current_user)
end

end
