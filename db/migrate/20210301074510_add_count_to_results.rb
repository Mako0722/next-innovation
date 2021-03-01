class AddCountToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :visit, :integer, default: 0
  end
end
