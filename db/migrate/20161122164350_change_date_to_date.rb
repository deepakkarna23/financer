class ChangeDateToDate < ActiveRecord::Migration
  def change
    change_column :finances, :date, :date
  end
end
