class AddBarDate < ActiveRecord::Migration
  def change
    add_column :bars, :bar_date, :date
  end
end
