class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :start_video
      t.integer :end_video
      t.string :text
      t.boolean :active
      t.boolean :display
      t.string :top_align
      t.string :left_align
      t.string :color

      t.timestamps
    end
  end
end
