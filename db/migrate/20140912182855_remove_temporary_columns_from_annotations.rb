class RemoveTemporaryColumnsFromAnnotations < ActiveRecord::Migration
  def change
    remove_column :annotations, :display, :boolean
    remove_column :annotations, :active, :boolean
  end
end
