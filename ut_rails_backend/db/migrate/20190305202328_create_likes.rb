class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :post_id

      t.timestamps
    end
    remove_column :posts, :likes
  end
end
