class AddDefaultsToAnnotations < ActiveRecord::Migration
  def up
    change_column :annotations, :text, :string, default: "Enter annotation here..."
    change_column :annotations, :active, :boolean, default: false
    change_column :annotations, :top_align, :string, default: "40%"
    change_column :annotations, :left_align, :string, default: "35%"
    change_column :annotations, :color, :string, default: "#CC46EB"
  end

  def down
    change_column :annotations, :text, :string, default: nil
    change_column :annotations, :active, :boolean, default: nil
    change_column :annotations, :top_align, :string, default: nil
    change_column :annotations, :left_align, :string, default: nil
    change_column :annotations, :color, :string, default: nil
  end
end
