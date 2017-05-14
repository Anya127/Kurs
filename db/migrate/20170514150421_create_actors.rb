class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text :l_name
      t.text :f_name
      t.text :s_name
      t.date :d_birthday

      t.timestamps null: false
    end
  end
end
