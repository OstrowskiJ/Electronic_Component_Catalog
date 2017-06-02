class RoomsController < ApplicationController
  before_action :authenticate_user!
  def show
    @shoutboxes = Shoutbox.all
  end
end
