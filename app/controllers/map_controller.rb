
class MapController < ApplicationController
  def get_shops
    @hash = Gmaps4rails.build_markers(Shop.all) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
    end

    render json: @hash.to_json
  end
end
