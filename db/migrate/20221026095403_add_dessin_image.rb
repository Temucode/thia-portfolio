class AddDessinImage < ActiveRecord::Migration[7.0]
  def change
    add_column :dessins, :image, :binary
  end
end
