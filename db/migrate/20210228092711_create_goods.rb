class CreateGoods < ActiveRecord::Migration[6.1]
  def change
    create_table :goods do |t|
      t.references :user, foreign_key: true
      t.references :result, foreign_key: true
      t.index [:user_id, :result_id], unique: true
      t.timestamps
    end
  end
end
