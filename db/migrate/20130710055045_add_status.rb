class AddStatus < ActiveRecord::Migration
  def change
    add_column :foos, :status, :string
  end
end
