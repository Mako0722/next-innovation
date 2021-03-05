class RemoveImageFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :image, :string
  end
end
