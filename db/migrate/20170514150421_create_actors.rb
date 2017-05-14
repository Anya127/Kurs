class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text :l_name, null: false
      t.text :f_name, null: false
      t.text :s_name
      t.date :d_birthday, null: false

      t.timestamps null: false
    end
  end
end
