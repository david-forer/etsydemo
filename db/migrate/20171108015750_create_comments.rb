class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :user_id
      t.integer :listing_id
      t.timestamps
    end
  end
end
