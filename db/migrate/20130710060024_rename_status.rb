class RenameStatus < ActiveRecord::Migration
  def up
    rename_column :foos, :status, :power
  end
end
