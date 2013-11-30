class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :size
      t.string :color
      t.string :tag
      t.string :image

      t.timestamps
    end
  end
end
