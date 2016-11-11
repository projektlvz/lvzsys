class AddPostIdToPoints < ActiveRecord::Migration
  def change
    add_column(:points, :post_id, :integer)
    add_index(:points, :post_id)
  end
end
