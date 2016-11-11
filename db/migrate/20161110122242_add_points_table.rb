class AddPointsTable < ActiveRecord::Migration
  def change
    create_table(:points) do|t|
      t.integer :owner_id
      t.string :owner_type
      t.integer :giver_id
      t.string :giver_type
      t.integer :score
      t.string :operation

      t.timestamps
    end
    add_index(:points, [:owner_type, :owner_id])
    add_index(:points, [:giver_type, :giver_id])
  end
end
