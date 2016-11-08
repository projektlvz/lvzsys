class AddCriticSeverityToMessages < ActiveRecord::Migration
  def change
    add_column(:messages, :severity, :string)
  end
end
