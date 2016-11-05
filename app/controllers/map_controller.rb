
class MapController < ApplicationController
  def get_shops
    @hash = nil
    if params[:search_params].present?
      search_params = params[:search_params]

      shops = Shop.where('latitude is not null and longitude is not null')
      shops = shops.where(category: search_params['shop_category']) if search_params['shop_category'].present?

      if search_params['features'].present?
        search_params['features'].each do |feature_name|
          shops = shops.where("features @> hstore(:key, :value)",     key: feature_name, value: "1")
        end
      end

      shops = shops.near(search_params['location'], ENV['GOOGLE_MAP_SEARCH_RADIUS'] || 50) if search_params['location'].present?

      @hash = shops_to_coords(shops.all)
    else
      @hash = shops_to_coords(Shop.all)
    end

    render json: @hash.to_json
  end

  private

  def shops_to_coords(shop)
    Gmaps4rails.build_markers(shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow render_to_string(:partial => "/shops/shop_on_map", :locals => { :shop => shop})
    end
  end
end
