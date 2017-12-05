class CreateHeaderClasses < ActiveRecord::Migration
  def change
    create_table :header_classes do |t|
      t.date :date
      t.string :start_time
      t.string :end_time
      t.integer :maximum_capacity
      t.integer :registered
      t.references :service, index: true, foreign_key: true
      t.references :shcedules, index: true, foreign_key: true
      t.string :teacher

      t.timestamps null: false
    end
  end
end
