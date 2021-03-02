class AddAccountlinkToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :twitter_account, :string, default: ''
    add_column :users, :github_account, :string, default: ''
  end
end
