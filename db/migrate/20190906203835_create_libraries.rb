class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |tnt|
      tnt.integer :user_id
      tnt.integer :book_id
      tnt.string :genre
    end
  end
end
