class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text :name_f
      t.text :genre_f
      t.text :lasting_f
      t.text :country_f
      t.text :companies_f
      t.text :min_age

      t.timestamps null: false
    end
  end
end
