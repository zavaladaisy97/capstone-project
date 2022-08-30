class AddImageToGarments < ActiveRecord::Migration[7.0]
  def change
    add_column :garments, :image, :string
  end
end
