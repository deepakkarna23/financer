class ChangeTextToString < ActiveRecord::Migration
  def change
    change_column :finances, :title, :string
  end
end
