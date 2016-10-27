class Shop < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :street, :name, :region, :country, :zip_code

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
end