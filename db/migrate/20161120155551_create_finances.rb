class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.string :title
      t.decimal :amount
      t.date :date
      t.timestamps null: false
    end
  end
end
