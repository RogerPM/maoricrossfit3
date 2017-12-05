class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.integer :num
      t.string :owner
      t.string :bank
      t.decimal :value
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
