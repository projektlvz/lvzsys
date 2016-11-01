class AddShopOwnerPostMarkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :owner_post, :boolean, default: false
    add_index :posts, :owner_post
  end
end
