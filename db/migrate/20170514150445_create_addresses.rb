class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :cinema, index: true, foreign_key: true
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
