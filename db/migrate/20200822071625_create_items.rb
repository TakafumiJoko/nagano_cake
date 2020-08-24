class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :caption
      t.string :image
      t.integer :price
      t.integer :category, null: false

      t.timestamps
    end
  end
end
