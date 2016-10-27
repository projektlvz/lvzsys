class AddUserInfoToUser < ActiveRecord::Migration
  def change
    add_column(:users, :first_name, :string)
    add_column(:users, :last_name, :string)
    add_column(:users, :facebook_link, :string)
    add_column(:users, :show_info, :boolean, default: false)
  end
end
