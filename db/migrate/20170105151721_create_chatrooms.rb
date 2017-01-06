class CreateChatrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :reciepient
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
