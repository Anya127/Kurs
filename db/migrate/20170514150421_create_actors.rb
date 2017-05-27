class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text :l_name, null: false
      t.text :f_name, null: false
      t.text :s_name
      t.date :d_birthday, null: false

      t.index [:l_name, :f_name, :s_name], unique: true
      t.timestamps null: false
    end
  end
end
