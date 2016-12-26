class Shop < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :street, :name, :region, :country, :zip_code

  # Geocoding for a shop.
  geocoded_by :full_shop_address
  after_validation :geocode , if: ->(obj){ obj.full_shop_address.present? and obj.address_was_changed? }

  # Features. Can be update - as those are transferred to tags.
  def self.features_list
    {
        vegan: :vegan.l,
        gluten: :gluten.l,
        diabetis: :diabetis.l,
        lactose: :lactose.l,
        gmo: :gmo.l,
        self_made: :self_made.l
    }
  end

  def full_shop_address
    [country, region, street, zip_code].compact.join(',')
  end

  def address_was_changed?
    country_changed? || region_changed? || street_changed? || zip_code_changed?
  end
end