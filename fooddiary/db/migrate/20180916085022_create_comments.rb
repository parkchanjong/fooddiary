class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :calorie
      t.date :day
      t.string :time
      t.string :bld
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
