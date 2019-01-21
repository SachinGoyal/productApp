class CreateProductVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :product_variants do |t|
      t.references :product, foreign_key: true
      t.string :name  
      t.string :description
      t.string :sale_message
      t.float :price
      t.float :discounted_price
      t.integer :sign, array: true, default: []
      t.timestamps
    end
  end
end
