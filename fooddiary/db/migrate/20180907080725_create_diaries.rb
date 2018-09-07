class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.text :foodname
      t.string :foodp
      t.date :day
      t.string :time
      t.integer :calorie
      t.string :bld

      t.timestamps
    end
  end
end
