class ShopsController < BaseController
  include Viewable
  before_action :login_required
  before_action :find_user, :only => [:edit, :update]

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
      redirect_to user_path(@user)
    else
      render :action => 'edit'
    end
  end

  def shop_params
    params[:shop].permit(:name, :country, :region, :zip_code, :street, :category, :farm_shop)
  end
end