class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :yourself
      t.string :skill, default: ""
      t.string :twitter_account, default: ""
      t.string :github_account, default: ""
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
