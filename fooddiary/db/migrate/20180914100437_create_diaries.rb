class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :foodname
      t.string :image
      #t.integer :user_id


      t.timestamps
    end
  end
end
