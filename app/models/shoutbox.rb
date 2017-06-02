class Shoutbox < ApplicationRecord
  belongs_to :user
  after_create_commit { BroadcastShoutboxJob.perform_later self}
end
