class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :projects, :type, :event_type
  end
end
