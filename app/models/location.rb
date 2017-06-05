class Location < ApplicationRecord

  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end

end
