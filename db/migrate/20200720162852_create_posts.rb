class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.float :price
      t.datetime :date
      t.string :image
      t.text :description
      t.integer :user_id
      t.boolean :sold
      t.integer :buyer_id

      t.timestamps
    end
  end
end
