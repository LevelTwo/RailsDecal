class AddAgeToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :number
  end
end
