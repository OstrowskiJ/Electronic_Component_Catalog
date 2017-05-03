class Catalog < ApplicationRecord
  belongs_to :user

    def self.search(search)
      if search
        where(["element LIKE ?","%#{search}%"])
      else
        all
      end
    end
end
