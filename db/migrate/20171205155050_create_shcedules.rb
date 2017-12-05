class CreateShcedules < ActiveRecord::Migration
  def change
    create_table :shcedules do |t|
      t.date :start_time
      t.date :end_time
      t.string :days
      t.string :start_hour
      t.string :end_hour
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
