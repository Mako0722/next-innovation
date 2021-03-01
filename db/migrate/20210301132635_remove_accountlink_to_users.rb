class RemoveAccountlinkToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :twitter_account, :string
    remove_column :users, :github_account, :string
  end
end
