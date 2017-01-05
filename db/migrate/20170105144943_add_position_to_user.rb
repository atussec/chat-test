class AddPositionToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :position, :integer, default: 0, null: false
  end
end
