class Search < ApplicationRecord

  def search_catalogs

    catalogs = Catalog.all
    catalogs = catalogs.where(["element LIKE ?","%#{keywords}%"]) if keywords.present?
    catalogs = catalogs.where(["category LIKE ?",category]) if category.present?
    catalogs = catalogs.where(["value >= ?",min_value]) if min_value.present?
    catalogs = catalogs.where(["value <= ?",max_value]) if max_value.present?

    return catalogs
  end 


end
