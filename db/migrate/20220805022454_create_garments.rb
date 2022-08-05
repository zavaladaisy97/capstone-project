class CreateGarments < ActiveRecord::Migration[7.0]
  def change
    create_table :garments do |t|
      t.string :name
      t.integer :color_id
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
