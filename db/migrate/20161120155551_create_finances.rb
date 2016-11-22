class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.text :title
      t.decimal :amount
      t.date :date
      t.timestamps null: false
    end
  end
end
