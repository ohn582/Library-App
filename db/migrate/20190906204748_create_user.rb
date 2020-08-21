class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |tnt|
      tnt.string :name
      tnt.integer :age
    end
  end
end
