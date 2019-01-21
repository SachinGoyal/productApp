class CreateJoinTableAspectsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :aspects_products, id: false do |t|
      t.references :aspect, foreign_key: true
      t.references :product, foreign_key: true
    end
  end
end
