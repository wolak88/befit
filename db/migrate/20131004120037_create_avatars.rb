class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.integer :age
      t.boolean :male
      t.integer :weight
      t.integer :height
      t.float :activeness

      t.timestamps
    end
  end
end
