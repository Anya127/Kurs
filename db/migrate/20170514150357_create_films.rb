class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text :name_f, null: false
      t.text :genre_f, null: false
      t.text :lasting_f, null: false
      t.text :country_f, null: false
      t.text :companies_f, null: false
      t.text :min_age, null: false

      t.timestamps null: false
    end
  end
end
