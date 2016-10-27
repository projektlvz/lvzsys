class ShopTable < ActiveRecord::Migration
  def change
    create_table(:shops) do |t|
      t.string :name
      t.string :category
      t.string :street
      t.string :region
      t.string :country
      t.string :zip_code
      t.integer :user_id
      t.hstore :features, default: {}, null: false

      t.timestamps
    end
    add_index :shops, :features, name: 'shops_features_idx', using: :gin
  end
end
