class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.text :title
      t.decimal :amount
      t.datetime :date
      t.timestamps null: false
    end
  end
end
