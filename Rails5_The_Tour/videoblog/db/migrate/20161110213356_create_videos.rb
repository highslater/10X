class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :size
      t.integer :length

      t.timestamps
    end
  end
end
