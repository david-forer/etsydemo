class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :breeder_name, :string
    add_column :users, :street_address, :string
    add_column :users, :suburb, :string
    add_column :users, :state, :string
    add_column :users, :clubs, :text
    add_column :users, :description, :text
    add_column :users, :next_litter, :string
    add_column :users, :breeder_id, :string
    add_column :users, :website, :string
  end
end
