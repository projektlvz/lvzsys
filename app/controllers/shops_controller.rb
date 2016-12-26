class ShopsController < BaseController
  include Viewable
  before_action :login_required

  ###########################################################################################
  #
  # This controller allows editing of shops after creation.
  #
  ###########################################################################################

  def edit
    @shop = current_user.shop
  end

  def update
    params_for_shop = shop_params
    params_for_shop[:features] = {}

    Shop.features_list.with_indifferent_access.each do |feature, translation|
      params_for_shop[:features][feature] = params.include?(feature) ? '1' : '0'
    end

    @shop = current_user.shop

    if @shop.update_attributes(params_for_shop)
      flash[:notice] = :your_changes_were_saved.l
      redirect_to community_engine_url
    else
      render :action => 'edit'
    end
  end

  def shop_params
    params[:shop].permit(:name, :country, :region, :zip_code, :street, :category, :farm_shop)
  end
end