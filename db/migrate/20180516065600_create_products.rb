class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :image
      t.string :suburb
      t.integer :category_id

      t.timestamps
    end
  end
end
