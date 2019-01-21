class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :name
      t.references :aspect
      t.timestamps
    end
  end
end
