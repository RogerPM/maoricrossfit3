class CreateDetailClasses < ActiveRecord::Migration
  def change
    create_table :detail_classes do |t|
      t.references :client, index: true, foreign_key: true
      t.references :subscription, index: true, foreign_key: true
      t.string :state
      t.text :comment

      t.timestamps null: false
    end
  end
end
