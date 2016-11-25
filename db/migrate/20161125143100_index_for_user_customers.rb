class IndexForUserCustomers < ActiveRecord::Migration
  def change
    add_index :users, :customer
  end
end
