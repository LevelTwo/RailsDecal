class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
