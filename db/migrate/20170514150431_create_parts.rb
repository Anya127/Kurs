class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.text :role_a
      t.references :film, index: true, foreign_key: true
      t.references :actor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
