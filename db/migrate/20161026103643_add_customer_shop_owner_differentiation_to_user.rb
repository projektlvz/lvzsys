class AddCustomerShopOwnerDifferentiationToUser < ActiveRecord::Migration
  def change
    add_column(:users, :customer, :boolean)
  end
end
