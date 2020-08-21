class CreateBook < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |tnt|
      tnt.string :title
      tnt.string :author
      tnt.string :date
    end
  end
end
