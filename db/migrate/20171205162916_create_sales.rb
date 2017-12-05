class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :date
      t.string :hour
      t.references :client, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :subtotal
      t.decimal :iva
      t.decimal :total_effective
      t.decimal :total_card
      t.decimal :total_checks
      t.text :nota

      t.timestamps null: false
    end
  end
end
