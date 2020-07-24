class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :msg_txt
      t.integer :chatroom_id
      t.integer :post_id

      t.timestamps
    end
  end
end
