class RemoveProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :yourself, :string
    remove_column :users, :skill, :string
  end
end
