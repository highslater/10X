class AddTitleToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :title, :text
  end
end
