class AddBreederToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Breeder, :boolean, default: false
  end
end
