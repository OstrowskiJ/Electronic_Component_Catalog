class BroadcastShoutboxJob < ApplicationJob
  queue_as :default

  def perform(shoutbox)
    ActionCable.server.broadcast 'room_channel',render_shoutbox(shoutbox)
  end


  private
  def render_shoutbox(shoutbox)
    ApplicationController.renderer.render shoutbox
  end
end
