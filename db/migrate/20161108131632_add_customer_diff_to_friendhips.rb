class AddCustomerDiffToFriendhips < ActiveRecord::Migration
  def change
    add_column(:friendships, :friend_customer, :boolean)
  end
end
