class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name  
      t.string :description
      t.string :sale_message
      t.float :price
      t.float :discounted_price

      t.timestamps
    end
  end
end
