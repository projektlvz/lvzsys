class AddAvatarIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :avatar_id, :integer
  end
end
