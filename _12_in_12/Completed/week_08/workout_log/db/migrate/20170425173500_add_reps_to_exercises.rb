class AddRepsToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :reps, :integer
  end
end