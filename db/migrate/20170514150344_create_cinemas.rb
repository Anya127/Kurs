class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.text :name_c, null: false
      t.text :address_c, null: false
      t.index :address_c, unique: true

      t.timestamps null: false
    end
  end
end
