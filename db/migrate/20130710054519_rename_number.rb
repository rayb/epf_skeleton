class RenameNumber < ActiveRecord::Migration
  def change
    rename_column :foos, :number, :age
  end
end
