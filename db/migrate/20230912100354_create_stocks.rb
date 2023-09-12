class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :code
      t.timestamps

      t.index :name
      t.index :code
    end
  end
end
