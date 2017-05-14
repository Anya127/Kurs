class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.text :name_c
      t.text :address_c

      t.timestamps null: false
    end
  end
end
