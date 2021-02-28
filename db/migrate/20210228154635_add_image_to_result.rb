class AddImageToResult < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :image, :string
  end
end
